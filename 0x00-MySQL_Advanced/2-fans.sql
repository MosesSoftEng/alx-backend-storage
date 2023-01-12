-- This SQL script select origin column, and sum of fans column as nb_fans, grouped by origin and ordered by nb_fans descending from 'metal_bands' table.

SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;
