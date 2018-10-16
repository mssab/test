DBCC CHECKIDENT ('[Table]', RESEED, 0);

WHERE CAST(DATEPART(year, [dbo].[sk_projekte].[va_beginn]) AS varchar) = 2018 and prioritaet='1' order by sk_projekte.va_beginn
