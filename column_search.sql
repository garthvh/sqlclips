USE BE
GO
SELECT 
	sys.tables.name AS TableName,
	SCHEMA_NAME(schema_id) AS SchemaName,
	sys.columns.name AS ColumnName
	
FROM sys.tables
	INNER JOIN sys.columns 
		ON sys.tables.OBJECT_ID = sys.columns.OBJECT_ID
		
WHERE sys.columns.name LIKE '%LF%'

ORDER BY 
	SchemaName, 
	TableName;