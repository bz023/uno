window.setInterval(function() {
    reloadIFrame()
}, 3000);

function reloadIFrame() {
    console.log('reloading..');
    document.getElementById('iframe').contentWindow.location.reload();
}