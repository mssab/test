<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FaceBook.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<meta property="og:http://photobooth.gate-internet.de/foto.aspx" />
  <meta property="og:Vodafone" />
  <meta property="og:cool pic" />
  <meta property="og:Teil dein Foto mit uns" />
  <meta property="og:http://www.gate-multimedia.de/Fotobooth/Device1/16_06_2017/Bild7.jpg" />
</head>
<body>
    


    <form id="form1" runat="server">
<div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  <!-- Your share button code -->
  <div class="fb-share-button" data-href="http://photobooth.gate-internet.de/foto.aspx" data-layout="button_count">
  </div>

        <iframe src="https://www.facebook.com/plugins/share_button.php?href=<%=clients%>&layout=button&size=large&mobile_iframe=false&width=73&height=28&appId" width="73" height="28" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
    </form>
</body>
</html>
