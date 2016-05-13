---
layout: module
title: Generating Distribution Keys
---

### iOS

The process for creating distribution keys and signing a production application for iOS is almost exactly the same as that for Developer keys, [as described in section 2](5-generating-keys-and-publishing-your-app.md). The only differences:

- Create a Production Certificate (upload your CSR to the Production Certificates section rather than Development)
- Create a Distribution Provisioning Profile (rather than Development)

Your app can then be published on [iTunes Connect](https://www.apple.com/itunes/working-itunes/sell-content/apps/).

### Android

An Android keystore can be easily generated using the command line:

    keytool -genkey -v -keystore [keystore_name].keystore -alias [alias_name] -keyalg RSA -keysize 2048 -validity 10000

The keytool is part of the standard Java distribution, and should be available by default on OSX. Install Java on Windows to make the keytool program available. It will prompt you with some questions like name, company, password, etc. Once you publish an Android app with a particular signing key, you must sign future versions with the same key in order to update the app. Don't lose this key, and don't lose the password! We can't retrieve it from Build for you.

### Windows 10



<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="6-creating-client-applications-with-oauth.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>