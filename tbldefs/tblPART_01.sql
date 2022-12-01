CREATE TABLE [tblPART_01] (
  [autoID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNumber] VARCHAR (255),
  [newNumber] LONG ,
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
