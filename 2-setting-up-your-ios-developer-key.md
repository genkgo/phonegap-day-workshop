---
layout: module
title: Setting Up Your iOS Developer Key
---

If you don't have an iOS signing key set up, your iOS Build will show an error. Let's fix this.

We'll go into setting up keys for app distribution shortly. For now we'll quickly demo setting up your iOS development key on Build ((documented on PhoneGap Build here)[http://docs.build.phonegap.com/en_US/signing_signing-ios.md.html#iOS%20Signing]). You'll need an Apple Developer Account to follow this part.

The process is outlined in more detail in the [PhoneGap Build iOS Signing Documentation](http://docs.build.phonegap.com/en_US/signing_signing-ios.md.html#iOS%20Signing). It's a bit convoluted, but here's a quick summary:

1. Open Keychain Access, and select __Request a Certificate from a Certificate Authority__ from the menu.

2. Enter an email address, select __Saved to Disk__, and select a location for your CSR file.

3. Upload your CSR file to the Certificates section in the Apple Developer Center.

4. Once your certificate is ready, download it and double click to import into your keychain.\

5. Find the Certificate in your keychain, and export it as a p12 file. Remember your password.

6. In the Apple Developer Center, create an Application ID for your app, and add your device UUID(s) to the Devices section.

7. In the Apple Developer Center, create a new Mobile Provisioning file. Ensure you include your new certificate and any devices you wish to test on. Download this file.

8. Upload your certificate and mobile provision to the Signing Keys section of your PhoneGap Build account, unlock, and build.

9. Scan the QR code and install your PhoneGap app.


<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="3-make-your-app-do-stuff.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>