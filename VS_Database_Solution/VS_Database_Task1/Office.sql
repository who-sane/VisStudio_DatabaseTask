CREATE TABLE [dbo].[Office]
(
	[LocCode] INT NOT NULL, 
    [DateAssigned] DATE NOT NULL,
    [Address] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(100) NULL

    PRIMARY KEY(LocCode, DateAssigned),
    CONSTRAINT NAMING_A_FOREIGN_KEY FOREIGN KEY(DateAssigned) REFERENCES Assignment
)
