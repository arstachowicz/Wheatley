CREATE TABLE [tblWASTEWATER] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [timeDate] DATETIME ,
  [laboratory] LONG ,
  [lvlHg] DOUBLE ,
  [lvlAs] DOUBLE ,
  [lvlCd] DOUBLE ,
  [lvlCr] DOUBLE ,
  [lvlCu] DOUBLE ,
  [lvlPb] DOUBLE ,
  [lvlMo] DOUBLE ,
  [lvlNi] DOUBLE ,
  [lvlSe] DOUBLE ,
  [lvlAg] DOUBLE ,
  [lvlZn] DOUBLE ,
  [lvlTotSuspSolids] DOUBLE ,
  [lvlP] DOUBLE ,
  [lvlBOD] DOUBLE 
)
