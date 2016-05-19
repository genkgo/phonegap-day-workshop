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

A Windows 10 Signing Key is generated using two Windows command line tools, `MakeCert` and `Pvk2Pfx`. These tools are available as part of the Windows Driver Kit (WDK).

	makecert.exe /n PublisherName /r /h 0 /eku "1.3.6.1.5.5.7.3.3,1.3.6.1.4.1.311.10.3.13" /e "01/02/2017" /sv mykey.pvk mycert.cer
	pvk2pfx.exe /pvk mykey.pvk /pi password /spc mycert.cer /pfx my-signing-key.pfx

An interactive batch script is available [here](extras/generate-windows-cert.bat) which streamlines these commands. Upload this to build and unlock using the password you specified.

A couple of preferences are also required to generate a distributable package:

    <author>Adobe Systems Canada Inc</author>
    <preference name="windows-identity-name" value="PhonegapBuild.PGBDeveloper" />

These values must match that of your [Windows Dev Center profile](http://dev.windows.com). Additionally, the Windows store supports an array of platform versions (Windows 10 Mobile (Universal), Windows 8.1, Windows 8.1 Phone) and architectures (arm, x64, x86). These are also configurable on build, depending on your desired targets:

    <preference name="windows-appx-target" value="8.1-phone" />
    <preference name="windows-arch" value="x86" />



<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="6-editing-manifests-with-config-file.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>