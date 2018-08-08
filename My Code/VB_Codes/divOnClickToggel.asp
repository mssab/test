<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        var text = new Array();
        text[0] = 'hidemeta';
        text[1] = 'hidemetb';
        text[2] = 'hidemetc';
        var span = new Array();
        span[0] = 'sp1';
        span[1] = 'sp2';
        span[2] = 'sp3';
        // text[3] = 'hidemetd';
        // usw.

        function toggle(id,sp) {
            if (document.getElementById(id).style.display == "none" && document.getElementById(sp).innerText == "+") {
                //for (i = 0; i < text.length; i++) {
                //    //document.getElementById(text[i]).style.display = "none";
                //}
                document.getElementById(id).style.display = "block";
                document.getElementById(sp).innerText = "-";
            }
            else {
                document.getElementById(id).style.display = "none";
                document.getElementById(sp).innerText = "+";
            }

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div onclick="toggle('hidemeta','sp1')" style="height: 20px; width: 150px; background: #808080; border-collapse:collapse"><a href="#">witere Felder</a>&nbsp;&nbsp;&nbsp;&nbsp;<span id="sp1">+</span></div>
            <div id="hidemeta" style="display: none">
                Einzublendender Text A
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>

            <div onclick="toggle('hidemetb')">Link B</div>
            <div id="hidemetb" style="display: none">Einzublendender Text B</div>

            <a href="#" onclick="toggle('hidemetc')">Link C</a>
            <div id="hidemetc" style="display: none">Einzublendender Text C</div>

        </div>
    </form>
</body>
</html>
