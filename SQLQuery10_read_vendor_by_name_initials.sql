USE [SCESPORTAL]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[read_vendor_by_name_initials]
		@INITIAL = 'B'

SELECT	@return_value as 'Return Value'

GO
