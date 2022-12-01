CREATE TABLE [tblJOIN_BUILDING_ROOM] (
  [buildingID] LONG ,
  [roomID] LONG ,
  [computerName] VARCHAR (255),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([buildingID], [roomID])
)
