ogr2ogr -f "GeoJSON" motorway_utm.geojson motorway.geojson -t_srs EPSG:32632 

ogr2ogr -f "GeoJSON" forest_utm.geojson forest.geojson -t_srs EPSG:32632 

ogr2ogr -f "GPKG" gadm36_DEU_utm.gpkg gadm36_DEU.gpkg -t_srs EPSG:32632 

ogr2ogr -f "GPKG" aoi.gpkg gadm36_DEU_utm.gpkg -sql "SELECT * FROM gadm36_DEU_2 WHERE fid in (15,26,35,164)" 

PAUSE