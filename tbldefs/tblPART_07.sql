CREATE TABLE [tblPART_07] (
  [autoID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNumber] VARCHAR (255),
  [newNumber] LONG ,
  [Rev] LONG ,
  [obsolete] BIT ,
  [r&d] BIT ,
  [partUseage] LONG ,
  [linkedID] VARCHAR (255),
  [creationDate] DATETIME ,
  [notes] VARCHAR (255),
  [location] LONG ,
  [subcategory] LONG 
)
