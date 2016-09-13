/**
 * Run this file with the following command:
 * electron app.js
 *
 * To have the electron command, install it with:
 * npm install -g electron-prebuilt
 */
var electron = require('electron');

electron.app.on('ready', function() {
    var mainWindow = new electron.BrowserWindow({width: 600, height: 800});
    mainWindow.loadURL('file://' + __dirname + '/index.html');
});
