SELECT Vendor_name
FROM Vendor
WHERE (vendor_name LIKE 'B%' ) AND (active = '1')


declare @CHAR VARCHAR(20) = 'N'

SELECT Vendor_name
FROM Vendor
WHERE (vendor_name LIKE (@CHAR +'%') ) AND (active = '1')

CREAT ESTORED
AS
	@CHAR VARCHAR(20) = 'N'

	BE