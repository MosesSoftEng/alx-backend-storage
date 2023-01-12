-- This SQL script select band_name, and lifespan column which is difference of
--  split and formed column, and ordered by lifespan descending from
--  'metal_bands' table, where the Glam Rock is present in the style column.
SELECT band_name, (IFNULL(split, '2020') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;
