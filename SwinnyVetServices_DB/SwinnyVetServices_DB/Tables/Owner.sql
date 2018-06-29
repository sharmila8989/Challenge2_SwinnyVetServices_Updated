CREATE TABLE [dbo].[Owner]
(
	[ownerId] INT NOT NULL,
    [ownerSurname] NVARCHAR(30) NOT NULL, 
    [ownerGivenName] NVARCHAR(30) NOT NULL, 
    [ownerPhone] INT NOT NULL,
	CONSTRAINT PK_Owner PRIMARY KEY (ownerId)
)
