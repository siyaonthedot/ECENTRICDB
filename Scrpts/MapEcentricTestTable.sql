
CREATE FUNCTION  MapEcentricTestTable(@input VARCHAR(250))
RETURNS INT
AS BEGIN
    DECLARE @ID INT

  SELECT @ID  =   ID FROM  dbo.EcentricTestTable  WHERE Name = @input
                         GROUP BY ID

    RETURN @ID
END

