CREATE TABLE [tblEP] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [partNum] LONG ,
  [Rev] LONG ,
  [fileName] VARCHAR (255),
  [capNum] VARCHAR (255),
  [baseNum] VARCHAR (255),
  [elecLink] LONG ,
  [csealLink] LONG ,
  [epVolt] LONG ,
  [epTime] LONG ,
  [epPump] DOUBLE ,
  [R&D] BIT ,
  [obsolete] BIT ,
  [filePage] LONG ,
  [Notes] VARCHAR (255),
  [miscLink] LONG 
)
