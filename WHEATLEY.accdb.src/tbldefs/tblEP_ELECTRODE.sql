CREATE TABLE [tblEP_ELECTRODE] (
  [ID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [electrode1] VARCHAR (255),
  [electrode2] VARCHAR (255),
  [electrode3] VARCHAR (255),
  [electrode4] VARCHAR (255),
  [electrode5] VARCHAR (255),
  [groundElectrode] VARCHAR (255)
)
