IF NOT EXISTS (SELECT 1 FROM sys.objects where object_id = OBJECT_ID(N'[dbo].[CheckTableObjects]') and type in (N'U'))
CREATE TABLE dbo.CheckTableObjects(
    ID int IDENTITY,
    [dbid] int,
    [database_name] nvarchar(128),
    [dbtype] nvarchar(max),
    [schema_id] int,
    [schema] sysname,
    [object_id] int,
    [object_name] sysname,
    [type] CHAR(2),
    [type_desc] nvarchar(60),
    [used_page_count] bigint,
    [StartTime] datetime,
    [EndTime] datetime,
    [RunDuration_MS] int,
    [Command] nvarchar(max),
    [NumberOfExecutions] int DEFAULT 0,
    [AvgRunDuration_MS] int DEFAULT 0,
    [PreviousRunDate] datetime,
    [PreviousRunDuration_MS] int,
    [LastCheckDate] date DEFAULT '1900-01-01',
    [Active] bit,
    CONSTRAINT PK_CheckTableObjects_ID PRIMARY KEY CLUSTERED (ID)
)