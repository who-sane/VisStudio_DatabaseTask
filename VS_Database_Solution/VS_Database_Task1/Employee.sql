CREATE TABLE [dbo].[Employee]
(
	[StaffID] INT NOT NULL,
    [DateAssigned] DATE NOT NULL,
    [GivenName] NVARCHAR(25) NOT NULL, 
    [Surname] NVARCHAR(25) NOT NULL, 
    
    PRIMARY KEY(StaffID, DateAssigned),
    FOREIGN KEY(DateAssigned) REFERENCES Assignment
)
