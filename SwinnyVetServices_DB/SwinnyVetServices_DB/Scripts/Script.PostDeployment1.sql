/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM  Treatment;
DELETE FROM  Pet;
DELETE FROM  [dbo].[Procedure];
DELETE FROM  [dbo].[Owner];

INSERT INTO [dbo].[Owner](ownerId, ownerSurname, ownerGivenName, ownerPhone) VALUES
(1, 'Sinatra', 'Frank', 400111222),
(2, 'Ellington', 'Duke', 40022233),
(3, 'Fitzgerald', 'Ella', 400333444);


INSERT INTO  [dbo].[Procedure](procedureId, procedureDescription, procedurePrice) VALUES
(1, 'Rabies Vaccination', $24.00),
(10, 'Examine and Treat Wound', $30.00),
(5, 'Heart Worm Test', $25.00),
(8, 'Tetnus Vaccination', $17.00);



INSERT INTO Pet (petId, petName, petType, ownerId) VALUES
(1, 'Buster', 'Dog',1),
(2, 'Fluffy', 'Cat', 1),
(3, 'Stew', 'Rabbit', 2),
(4, 'Buster', 'Dog', 3),
(5, 'Pooper', 'Dog', 3);

INSERT INTO Treatment(treatmentId, petId, ownerId, procedureId, treatmentDate, treatmentNotes, treatmentPrice) VALUES
(1, 1, 1, 1, '2017/06/20', 'Routine Vaccination',$22.00),
(4, 1, 1, 1, '2018/05/15', 'Booster Shot', $24.00),
(2, 2,  1, 10, '2018/05/01', 'Wounds sustained in apparent cat fight', $30.00),
(3, 3, 2, 10, '2018/05/10','Wounds sustained in apparent dog fight', $30.00),
(5, 5, 3, 5, '2018/05/18', 'Routine Test', $25.00);

END;
