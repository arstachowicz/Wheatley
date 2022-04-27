CREATE TABLE [tblCHEMICALS] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [chemical] VARCHAR (255),
  [empirical] VARCHAR (255),
  [density] DOUBLE ,
  [molecularWeight] DOUBLE ,
  [concentration] DOUBLE ,
  [metalTesting] BIT ,
  [densityTesting] BIT ,
  [titrationTesting] BIT ,
  [opL] DOUBLE ,
  [opU] DOUBLE ,
  [ASTM] LONG 
)
