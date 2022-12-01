CREATE TABLE [tblMAINTENANCE_DAILY_CL] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [resistanceMeter] DOUBLE ,
  [waterMeter_CR] DOUBLE ,
  [waterMeter_CL] DOUBLE ,
  [uvLight] BIT ,
  [cleanFloor] BIT ,
  [chemicalCable] BIT ,
  [usRefilled] BIT ,
  [usCleaned] BIT ,
  [techName] LONG 
)
