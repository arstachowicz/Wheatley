﻿CREATE TABLE [tblPARTNUM] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNum] VARCHAR (255),
  [surAreaInt] DOUBLE ,
  [surAreaExt] DOUBLE 
)