<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/de_DE/sdk.js#xfbml=1&version=v2.9";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

</head>
<body>
    


    <form id="form1" runat="server">
   <!-- Load Facebook SDK for JavaScript -->
  <div id="fb-root"></div>
 

  <!-- Your share button code -->
   
      <div class="fb-share-button" data-href="http://www.gate-multimedia.de/Fotobooth/Device1/16_06_2017/Bild1.jpg" data-layout="button" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.gate-multimedia.de%2FFotobooth%2FDevice1%2F16_06_2017%2FBild1.jpg&amp;src=sdkpreparse">Teilen</a></div>
    </form>
</body>
</html>
