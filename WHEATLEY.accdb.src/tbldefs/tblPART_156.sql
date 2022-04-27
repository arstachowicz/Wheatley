CREATE TABLE [tblPART_156] (
  [autoID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNumber] VARCHAR (255),
  [rev] LONG ,
  [obsolete] BIT ,
  [r&d] BIT ,
  [partUseage] LONG ,
  [linkedID] VARCHAR (255),
  [creationDate] DATETIME ,
  [notes] LONGTEXT ,
  [location] LONG ,
  [subcategory] LONG 
)
