CREATE TABLE [tblPRESS] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNum] LONG ,
  [rev] LONG ,
  [partTop] VARCHAR (255),
  [partBot] VARCHAR (255),
  [partTool1] VARCHAR (255),
  [partTool2] VARCHAR (255),
  [partTool3] VARCHAR (255),
  [partMisc] VARCHAR (255),
  [assembNum] VARCHAR (255),
  [fileName] VARCHAR (255),
  [filePage] LONG ,
  [NOTES] LONGTEXT ,
  [obsolete] BIT ,
  [dateAdded] DATETIME ,
  [r&d] BIT 
)
