CREATE TABLE [tbLCHEMICALS_MOVE] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [chemical] LONG ,
  [line] LONG ,
  [volume] DOUBLE ,
  [movedLine] LONG ,
  [transferred] BIT ,
  [drained] BIT ,
  [added] BIT ,
  [techName] LONG 
)
