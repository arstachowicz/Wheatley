﻿CREATE TABLE [tblSHIFTS] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [shift] VARCHAR (255),
  [startTime] DATETIME ,
  [endTime] DATETIME 
)