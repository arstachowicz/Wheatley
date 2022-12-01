CREATE TABLE [tblTECHNAME] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [firstName] VARCHAR (50),
  [lastName] VARCHAR (100),
  [Employed] BIT ,
  [shift] LONG ,
  [worksCL] BIT ,
  [worksCR] BIT 
)
