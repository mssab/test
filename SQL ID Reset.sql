DBCC CHECKIDENT ('[Table]', RESEED, 0);

CAST(DATEPART(year, [dbo].[sk_projekte].[va_beginn]) AS varchar) = 2018
