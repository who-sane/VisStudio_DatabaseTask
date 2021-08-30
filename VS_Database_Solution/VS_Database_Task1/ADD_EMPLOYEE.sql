CREATE PROCEDURE ADD_CUSTOMER @PSTAFFID INT, @PDATEASSIGNED NVARCHAR(100), @pFNAME NVARCHAR(50), @pLNAME NVARCHAR(50)  AS

BEGIN
    BEGIN TRY

        IF @PSTAFFID < 1 OR @PSTAFFID > 499
            THROW 50020, 'Customer ID out of range', 1

        INSERT INTO Employee (StaffID, DateAssigned, GivenName, Surname) 
        VALUES (@PSTAFFID, @pFNAME, @pLNAME, null);

    RETURN 0 

    END TRY
    BEGIN CATCH
        if ERROR_NUMBER() = 2627
            THROW 50010, 'Duplicate customer ID', 1
        ELSE IF ERROR_NUMBER() = 50020
            THROW
        ELSE
            BEGIN
                DECLARE @ERRORMESSAGE NVARCHAR(MAX) = ERROR_MESSAGE();
                THROW 50000, @ERRORMESSAGE, 1
            END; 
    END CATCH;

END;