SELECT 
	[pid],
     SUBSTRING(convert(varchar, [beginn],104 ),0,6) + ' - ' +
      convert(varchar, [ende], 104) + ' - '+ sk_projekte.[veranstaltung] + ' - ' +
	  sk_projekte.va_ort as veranstaltung
  FROM [skoda].[dbo].[sk_Probefahrten_veranstaltung] INNER JOIN
                         dbo.sk_projekte ON dbo.[sk_Probefahrten_veranstaltung].pid = dbo.sk_projekte.id