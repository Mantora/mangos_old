/*
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef _MAP_BUILDER_H
#define _MAP_BUILDER_H

#include <vector>
#include <set>
#include <map>

#include "TerrainBuilder.h"

#include "IVMapManager.h"
#include "WorldModel.h"

#include "Recast.h"
#include "DetourNavMesh.h"

using namespace std;
using namespace VMAP;
// G3D namespace typedefs conflicts with ACE typedefs

#define MMAP_MAGIC 0x4d4d4150   // 'MMAP'
#define MMAP_VERSION 1

#define TILES_PER_MMTILE 16
#define TILE_SIZE (GRID_SIZE / TILES_PER_MMTILE)

namespace MMAP
{
    typedef map<uint32,set<uint32>*> TileList;

    struct IntermediateValues
    {
        rcHeightfield* heightfield;
        unsigned char* triFlags;
        rcCompactHeightfield* compactHeightfield;
        rcContourSet* contours;
        rcPolyMesh* polyMesh;
        rcPolyMeshDetail* polyMeshDetail;
    };

    struct mmapTileHeader
    {
        uint32 mmapMagic;
        uint32 dtVersion;
        uint32 mmapVersion;
        uint32 tileCount;
        bool usesHiRes : 1;
        bool usesLiquids : 1;

        mmapTileHeader() :
            mmapMagic(MMAP_MAGIC),
            dtVersion(DT_NAVMESH_VERSION),
            mmapVersion(MMAP_VERSION),
            tileCount(0)
        {}

        mmapTileHeader(TerrainBuilder* terrainBuilder) :
            mmapMagic(MMAP_MAGIC),
            dtVersion(DT_NAVMESH_VERSION),
            mmapVersion(MMAP_VERSION),
            tileCount(0)
        {
            usesHiRes = terrainBuilder->usesHiRes();
            usesLiquids = terrainBuilder->usesLiquids();
        }

    private:
        mmapTileHeader(const mmapTileHeader &header);
    };

    class MapBuilder
    {
        public:
            MapBuilder(float maxWalkableAngle   = 60.f,
                       bool skipLiquid          = false,
                       bool skipContinents      = true,
                       bool skipJunkMaps        = true,
                       bool skipBattlegrounds   = true,
                       bool hiResHeightmaps     = false,
                       bool debugOutput         = false);

            ~MapBuilder();

            // builds all mmap tiles for the specified map id (ignores skip settings)
            void build(uint32 mapID);

            // builds an mmap tile for the specified map tile (ignores skip settings)
            void buildTile(uint32 mapID, uint32 tileX, uint32 tileY);

            // builds list of maps, then builds all of mmap tiles (based on the skip settings)
            void buildAll();

        private:
            // detect maps and tiles
            void discoverTiles();
            set<uint32>* getTileList(uint32 mapID);

            // load and unload models
            bool loadVMap(uint32 mapID, uint32 tileX, uint32 tileY, MeshData &meshData);

            // vert and triangle methods
            void transform(vector<Vector3> original, vector<Vector3> &transformed,
                           float scale, G3D::Matrix3 rotation, Vector3 position);
            void copyVertices(vector<Vector3> source, G3D::Array<float> &dest);
            void copyIndices(vector<MeshTriangle> source, G3D::Array<int> &dest, int offest, bool flip);
            void copyIndices(G3D::Array<int> &dest, G3D::Array<int> src, int offset);
            void cleanVertices(G3D::Array<float> &verts, G3D::Array<int> &tris);

            // move map building
            void buildMoveMap(uint32 mapID);
            void buildNavMesh(uint32 mapID, dtNavMesh* &navMesh);
            void buildMoveMapTile(uint32 mapID,
                                  uint32 tileX,
                                  uint32 tileY,
                                  MeshData meshData,
                                  float bmin[3],
                                  float bmax[3],
                                  dtNavMesh* navMesh);

            void getTileBounds(uint32 tileX, uint32 tileY,
                               float* verts, int vertCount,
                               float* bmin, float* bmax);

            void initIntermediateValues(IntermediateValues &iv);
            void clearIntermediateValues(IntermediateValues &iv);

            bool shouldSkipMap(uint32 mapID);
            bool isTransportMap(uint32 mapID);
            bool shouldSkipTile(uint32 mapID, uint32 tileX, uint32 tileY);

            // debug output
            void generateObjFile(uint32 mapID, uint32 tileX, uint32 tileY, MeshData meshData);
            void generateRealObj(uint32 mapID, uint32 tileX, uint32 tileY, MeshData meshData);
            void writeIV(uint32 mapID, uint32 tileX, uint32 tileY, IntermediateValues iv);
            void debugWrite(FILE* file, const rcHeightfield* hf);
            void debugWrite(FILE* file, const rcSpan* span);
            void debugWrite(FILE* file, const rcCompactHeightfield* chf);
            void debugWrite(FILE* file, const rcContourSet* cs);
            void debugWrite(FILE* file, const rcPolyMesh* mesh);
            void debugWrite(FILE* file, const rcPolyMeshDetail* mesh);

            IVMapManager* m_vmapManager;
            TerrainBuilder* m_terrainBuilder;

            TileList m_tiles;

            bool m_debugOutput;

            bool m_skipContinents;
            bool m_skipJunkMaps;
            bool m_skipBattlegrounds;

            float m_maxWalkableAngle;

            rcContext* m_rcContext;
    };
}

#endif