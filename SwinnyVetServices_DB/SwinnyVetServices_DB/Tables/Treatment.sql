CREATE TABLE [dbo].[Treatment]
(
	[treatmentId] INT NOT NULL ,
    [treatmentNotes] NVARCHAR(MAX) NOT NULL, 
    [treatmentDate] DATE NOT NULL, 
    [treatmentPrice] MONEY NOT NULL, 
    [petId] INT NOT NULL, 
    [ownerId] INT NOT NULL, 
    [procedureId] INT NOT NULL,
	CONSTRAINT PK_Treatment PRIMARY KEY (treatmentId),
	CONSTRAINT FK_TreatmentPet FOREIGN KEY (petId) REFERENCES Pet(petId),
	CONSTRAINT FK_TreatmentOwner FOREIGN KEY (ownerId) REFERENCES Owner(ownerId),
	CONSTRAINT FK_TreatmentProcedure FOREIGN KEY (procedureId) REFERENCES  [dbo].[Procedure](procedureId)

)
