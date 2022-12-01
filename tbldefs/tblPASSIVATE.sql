CREATE TABLE [tblPASSIVATE] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNum] LONG ,
  [rev] LONG ,
  [fixtureNum] VARCHAR (255),
  [maniNum] VARCHAR (255),
  [maniNum1] VARCHAR (255),
  [maniNum2] VARCHAR (255),
  [fileName] VARCHAR (255),
  [pageNum] LONG ,
  [Notes] VARCHAR (255),
  [obsolete] BIT ,
  [r&d] BIT 
)
