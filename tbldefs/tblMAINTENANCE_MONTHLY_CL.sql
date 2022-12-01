CREATE TABLE [tblMAINTENANCE_MONTHLY_CL] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [ultrasonicFilter] BIT ,
  [plantNum] LONG ,
  [mopFloors] BIT ,
  [techName] LONG 
)
