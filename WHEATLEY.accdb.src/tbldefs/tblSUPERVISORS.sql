CREATE TABLE [tblSUPERVISORS] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [firstName] VARCHAR (255),
  [lastName] VARCHAR (255),
  [shift] LONG ,
  [email] VARCHAR (80),
  [username] VARCHAR (100) CONSTRAINT [username] UNIQUE,
  [password] VARCHAR (50),
  [Employed] BIT 
)
