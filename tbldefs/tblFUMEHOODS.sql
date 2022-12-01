CREATE TABLE [tblFUMEHOODS] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [line] LONG ,
  [chemical] LONG ,
  [velocity] SHORT ,
  [techName] LONG 
)
