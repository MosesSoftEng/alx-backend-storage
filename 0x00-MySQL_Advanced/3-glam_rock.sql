-- This SQL script select band_name, and lifespan column which is difference of split and formed column, and ordered by lifespan descending from 'metal_bands' table, where the Glam Rock is present in the style column.
SELECT band_name, COALESCE(split, 2020) - formed as lifespan FROM
metal_bands WHERE style LIKE '%Glam rock%' ORDER BY lifespan DESC;
