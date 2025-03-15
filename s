SplitRecordType AS (
    -- Step 2: Split RecordTypeCriteria if it contains multiple values
    SELECT DISTINCT value AS RecordTypeCriteria
    FROM RecordTypeFilter
    CROSS APPLY STRING_SPLIT(RecordTypeCriteria, ',')
),
ExtractedStartPositions AS (
    -- Step 3: Extract the first numeric value from each RecordTypeCriteria
    SELECT DISTINCT 
        CAST(LEFT(RecordTypeCriteria, CHARINDEX('-', RecordTypeCriteria + '-') - 1) AS INT) AS StartPosition
    FROM SplitRecordType
    WHERE ISNUMERIC(LEFT(RecordTypeCriteria, CHARINDEX('-', RecordTypeCriteria + '-') - 1)) = 1
)
