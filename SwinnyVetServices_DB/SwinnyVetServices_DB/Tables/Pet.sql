CREATE TABLE [dbo].[Pet]
(
	[petId] INT NOT NULL ,
    [petName] NVARCHAR(30) NOT NULL, 
    [petType] NVARCHAR(30) NOT NULL, 
    [ownerId] INT NOT NULL,
	CONSTRAINT PK_Pet PRIMARY KEY (petId),
	CONSTRAINT FK_PetOwner FOREIGN KEY (ownerId) REFERENCES Owner(ownerId)
)
