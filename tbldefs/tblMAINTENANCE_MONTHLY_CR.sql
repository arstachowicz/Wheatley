CREATE TABLE [tblMAINTENANCE_MONTHLY_CR] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [cleanWalls] BIT ,
  [cleanCeilings] BIT ,
  [mopFloors] BIT ,
  [techName] LONG ,
  [leakCal4] BIT ,
  [leakCal5] BIT ,
  [leakCal6] BIT ,
  [leakCal7] BIT ,
  [calVal] DOUBLE ,
  [standVal] DOUBLE ,
  [openVal] DOUBLE ,
  [closedVal] DOUBLE 
)
