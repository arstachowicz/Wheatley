CREATE TABLE [tblULTRASONICS] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [building] LONG ,
  [techName] LONG ,
  [tank] LONG ,
  [temperature] DOUBLE ,
  [position1] DOUBLE ,
  [position2] DOUBLE ,
  [position3] DOUBLE ,
  [position4] DOUBLE ,
  [position5] DOUBLE ,
  [position6] DOUBLE ,
  [position7] DOUBLE ,
  [position8] DOUBLE ,
  [position9] DOUBLE 
)
