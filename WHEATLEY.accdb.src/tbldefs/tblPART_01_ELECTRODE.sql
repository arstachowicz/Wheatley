CREATE TABLE [tblPART_01_ELECTRODE] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [elecLink] LONG ,
  [dia1] DOUBLE ,
  [len1] DOUBLE ,
  [dia2] DOUBLE ,
  [len2] DOUBLE ,
  [totLen] DOUBLE ,
  [tapered] BIT ,
  [stepped] BIT ,
  [multiGlandFix] BIT ,
  [specialFeatures] BIT ,
  [groundElec] BIT 
)
