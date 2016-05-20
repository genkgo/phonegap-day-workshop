---
layout: module
title: Setting Up Your iOS Developer Key
---

If you don't have an iOS signing key set up, your iOS Build will fail. Let's fix this.

We'll go into setting up keys for app distribution shortly. For now we'll quickly overview setting up your iOS development key on Build, [documented on PhoneGap Build here](http://docs.build.phonegap.com/en_US/signing_signing-ios.md.html), so you can test your iOS builds. 

Note: You'll need an Apple Developer Account to follow this part.

1. Open Keychain Access, and select __Request a Certificate from a Certificate Authority__ from the menu.

2. Enter an email address, select __Saved to Disk__, and select a location for your CSR file.

3. Upload your CSR file to the __Development Certificates__ section in the Apple Developer Center.

4. Once your certificate is ready, download it and double click to import into your keychain.\

5. Find the Certificate in your keychain, and export it as a p12 file. Remember your password.

6. In the [Apple Developer Center](https://developer.apple.com/account), create an Application ID for your app, and add your device UUID(s) to the Devices section.

7. In the Apple Developer Center, create a new __Development Mobile Provisioning file__. Ensure you include your new certificate and any devices you wish to test on. Download the `.mobileprovision` file.

8. Upload your certificate and mobile provision to the Signing Keys section of your PhoneGap Build account, unlock, and build.

9. Scan the QR code and install your PhoneGap app on iOS.


<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="3-plugins-and-more.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>