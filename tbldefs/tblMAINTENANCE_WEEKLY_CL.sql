CREATE TABLE [tblMAINTENANCE_WEEKLY_CL] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [lens] BIT ,
  [safetyShower] BIT ,
  [eyeFlush] BIT ,
  [filterUS] BIT ,
  [techName] LONG 
)
