---
layout: module
title: Edit, Deploy, and Debug Cycle on Build
---

PhoneGap Build eliminates the need for SDK's (mostly) and IDE's. Without these however, we need to know how to debug our app.

### Edit

Use your favourite text editor to edit your files locally. Sublime Text or VIM are great.

### Deploy

iOS and Android builds can initially be deployed by scanning a QR code 

PhoneGap Build also offers a tool called **Hydration** which allows you to quickly upload and deploy changes to your PhoneGap app's web assets (HTML, JS, CSS) without doing a full re-build and re-install. Its important to note that when you update your config.xml, including addition of any plugins, a full app rebuild and reinstall is required for the changes to take effect.

### Debug

Without being directly connected to a device and having a native SDK debugger, how do you inspect and debug your app?

#### Android

**OSX & Windows**: Chrome Remote Developer Tools
Connect your Android device to your computer, and navigate to chrome://inspect in Chrome browser.

#### iOS

- **OSX**: Safari JavasScript Developer Tools
Enable the Develop Menu in Safari Advanced Settings. Connect your iOS Device and the PG Webview should appear in the develop menu.
- **Windows**: Weinre (see below)

#### Windows Phone

- **OSX & Windows**: Weinre

#### Weinre

Weinre is a remote implementation of the Webkit developer tools. You can include it automatically in your PhoneGap Build application by checking the `debug` option on your app, or setting it to true via the API.

<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="5-generating-keys-and-publishing-your-app.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>