﻿CREATE TABLE [tblLEAK_CHECK] (
  [autoID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNum] LONG ,
  [rev] LONG ,
  [topNum] VARCHAR (255),
  [bottomNum] VARCHAR (255),
  [maniNum1] VARCHAR (255),
  [maniNum2] VARCHAR (255),
  [miscNum1] VARCHAR (255),
  [miscNum2] VARCHAR (255),
  [miscNum3] VARCHAR (255),
  [miscNum4] VARCHAR (255),
  [miscNum5] VARCHAR (255),
  [processLayout] VARCHAR (255),
  [filePage] LONG ,
  [Notes] VARCHAR (255),
  [oldAssem] VARCHAR (255),
  [obsolete] BIT ,
  [r&d] BIT 
)
