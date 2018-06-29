CREATE TABLE [dbo].[Procedure]
(
	[procedureId] INT NOT NULL ,
    [procedureDescription] NVARCHAR(50) NOT NULL, 
    [procedurePrice] MONEY NOT NULL,
	CONSTRAINT PK_Procedure PRIMARY KEY (procedureId)
)
