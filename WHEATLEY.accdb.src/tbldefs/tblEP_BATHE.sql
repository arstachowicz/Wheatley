CREATE TABLE [tblEP_BATHE] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNum] LONG ,
  [rev] LONG ,
  [assemblyID] VARCHAR (255),
  [processLayout] VARCHAR (255),
  [pageNum] LONG ,
  [base1] VARCHAR (255),
  [base2] VARCHAR (255),
  [grndElec1] VARCHAR (255),
  [grndElec2] VARCHAR (255),
  [epVolt] LONG ,
  [epTime] LONG ,
  [r&d] BIT ,
  [obsolete] BIT 
)
