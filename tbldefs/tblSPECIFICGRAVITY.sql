CREATE TABLE [tblSPECIFICGRAVITY] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [techName] LONG ,
  [chemical] LONG ,
  [line] LONG ,
  [density] DOUBLE ,
  [measureTemp] DOUBLE ,
  [operTemp] DOUBLE 
)
