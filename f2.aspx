<%@ Page Language="VB" AutoEventWireup="false" CodeFile="f2.aspx.vb" Inherits="f2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div id="fb-root"></div>
            <script>
                window.fbAsyncInit = function () {
                    FB.init({
                        appId: '278316195564516', status: true, cookie: true,
                        xfbml: true
                    });
                };
                (function () {
                    var e = document.createElement('script'); e.async = true;
                    e.src = document.location.protocol +
                    '//connect.facebook.net/en_US/all.js';
                    document.getElementById('fb-root').appendChild(e);
                }());
            </script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#share_button').click(function (e) {
                        e.preventDefault();
                        FB.ui(
                        {
                            method: 'feed',
                            name: 'This is the content of the mssab.',
                            link: 'photobooth.gate-internet.de/foto.aspx?id=1234',
                            picture: 'http://www.gate-multimedia.de/Fotobooth/Device1/16_06_2017/Bild7.jpg',
                            caption: 'Top 3 reasons why you should care about your finance',
                            description: "What happens when you don't take care of your finances? Just look at our country -- you spend irresponsibly, get in debt up to your eyeballs, and stress about how you're going to make ends meet. The difference is that you don't have a glut of taxpayers…",
                            message: "hi wie geht's"
                        });
                    });
                });
            </script>

            <img src = "share_button.png" id = "share_button">


        </div>
    </form>
</body>
</html>
