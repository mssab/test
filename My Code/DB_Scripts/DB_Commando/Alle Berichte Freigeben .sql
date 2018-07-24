--update stammdaten set [freigabe_bericht_intern]='ja',[freigabe_bilder_intern]='ja'
--select  [freigabe_bericht_intern],[freigabe_bilder_intern] 
FROM            einsatzbericht INNER JOIN stammdaten ON einsatzbericht.stammdaten_id = stammdaten.id INNER JOIN
                         login ON stammdaten.mitarbeiter = login.id
WHERE        (stammdaten.aktion_id = 12) AND (stammdaten.mitarbeiter =47)
