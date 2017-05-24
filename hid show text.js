<script>// <![CDATA[
function show(id) {
    if(document.getElementById) {
        var mydiv = document.getElementById(id);
        mydiv.style.display = (mydiv.style.display=='block'?'none':'block');
    }
}
// ]]></script>
<p><strong> &gt;</strong> <a onclick="javascript:show('divText'); return false" style="cursor: pointer; font-weight: bold;">Wichtige Informartion</a></p>
<div style="display: none;" id="divText">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</div>
<p><br /><br /><br /></p>
<div style="clear: both;"></div>