    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Willst du wirklich den Datei löschen ?")) {
                confirm_value.value = "Ja";
            } else {
                confirm_value.value = "Nein";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
	
	 Dim confirmValue As String = Request.Form("confirm_value")
        If confirmValue = "Ja" Then
           //do somthing
        Else
			// do another thing
        End If