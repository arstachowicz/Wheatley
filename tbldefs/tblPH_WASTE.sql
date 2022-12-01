CREATE TABLE [tblPH_WASTE] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [techName] LONG ,
  [pH] DOUBLE ,
  [drained] DOUBLE 
)
