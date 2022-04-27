CREATE TABLE [tblMAINTENANCE_WEEKLY_CR] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [chasewaySweep] BIT ,
  [gowningSweep] BIT ,
  [laundry] BIT ,
  [mopDrying] BIT ,
  [stakingToolsClean] BIT ,
  [outsideLedges] BIT ,
  [mats] BIT ,
  [handTools] BIT ,
  [wipeCans] BIT ,
  [stickyMop] BIT ,
  [wipeBenches] BIT ,
  [gowningArea] BIT ,
  [techName] LONG 
)
