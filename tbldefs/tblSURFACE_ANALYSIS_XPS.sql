﻿CREATE TABLE [tblSURFACE_ANALYSIS_XPS] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [rnd] BIT ,
  [testPart] LONG ,
  [Modifiers] LONGTEXT ,
  [CrFe] DOUBLE ,
  [CrOxFeOx] DOUBLE ,
  [oxideThick] DOUBLE ,
  [aluminum] DOUBLE ,
  [calcium] DOUBLE ,
  [carbon] DOUBLE ,
  [chlorine] DOUBLE ,
  [chromium] DOUBLE ,
  [copper] DOUBLE ,
  [fluorine] DOUBLE ,
  [iron] DOUBLE ,
  [magnesium] DOUBLE ,
  [manganese] DOUBLE ,
  [molybdenum] DOUBLE ,
  [nickel] DOUBLE ,
  [nitrogen] DOUBLE ,
  [oxygen] DOUBLE ,
  [phosphorous] DOUBLE ,
  [silicon] DOUBLE ,
  [sodium] DOUBLE ,
  [sulfur] DOUBLE ,
  [zinc] DOUBLE ,
  [others] DOUBLE ,
  [laboratory] LONG ,
  [Notes] LONGTEXT 
)
