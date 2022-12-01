CREATE TABLE [tblTASKLIST] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [taskTitle] VARCHAR (200),
  [supervisorResponsible] VARCHAR ,
  [frequency] LONG ,
  [tableRel] VARCHAR (100),
  [qryRel] VARCHAR (200),
  [alertEmail] SHORT ,
  [Check] DATETIME ,
  [combined] BIT ,
  [combinedQuery] VARCHAR (255),
  [talonDoc] VARCHAR (255),
  [shift] LONG 
)
