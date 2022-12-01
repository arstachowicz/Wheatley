CREATE TABLE [tblTITRATION] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [timeHour] DATETIME ,
  [techName] LONG ,
  [chemical] LONG ,
  [line] LONG ,
  [temp] DOUBLE ,
  [massSol] DOUBLE ,
  [concNaOH] DOUBLE ,
  [volTitrant] DOUBLE ,
  [volSample] DOUBLE 
)
