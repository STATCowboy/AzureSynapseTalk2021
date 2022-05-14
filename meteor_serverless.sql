-- This is auto-generated code
SELECT TOP 100
    -- jsonContent
     JSON_VALUE (jsonContent, '$.name') AS name
    , JSON_VALUE (jsonContent, '$.year') AS year
    , JSON_VALUE (jsonContent, '$.mass') AS mass
    , JSON_VALUE (jsonContent, '$.reclat') AS Lat
    , JSON_VALUE (jsonContent, '$.reclong') AS Long

/* --> place the keys that you see in JSON documents in the WITH clause:
       , JSON_VALUE (jsonContent, '$.key1') AS header1
       , JSON_VALUE (jsonContent, '$.key2') AS header2
*/
FROM
    OPENROWSET(
        BULK 'https://jbj2synadls.dfs.core.windows.net/synapse/y77d-th95.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b' --,
        -- ROWTERMINATOR = '0x0b'
    )
    WITH (
        jsonContent varchar(MAX)
    ) AS [result]
GO

DROP VIEW IF EXISTS meteor_data
GO

CREATE VIEW meteor_data
AS
-- This is auto-generated code
SELECT 
    -- jsonContent
     JSON_VALUE (jsonContent, '$.name') AS name
    , JSON_VALUE (jsonContent, '$.year') AS year
    , JSON_VALUE (jsonContent, '$.mass') AS mass
    , JSON_VALUE (jsonContent, '$.reclat') AS Lat
    , JSON_VALUE (jsonContent, '$.reclong') AS Long

/* --> place the keys that you see in JSON documents in the WITH clause:
       , JSON_VALUE (jsonContent, '$.key1') AS header1
       , JSON_VALUE (jsonContent, '$.key2') AS header2
*/
FROM
    OPENROWSET(
        BULK 'https://jbj2synadls.dfs.core.windows.net/synapse/y77d-th95.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b' --,
        -- ROWTERMINATOR = '0x0b'
    )
    WITH (
        jsonContent varchar(MAX)
    ) AS [result]
GO

