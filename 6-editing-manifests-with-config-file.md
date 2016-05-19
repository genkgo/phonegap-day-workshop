---
layout: module
title: Editing Manifests with config-file
---

There may be times when you want to configure your application in a manner not supported by PhoneGap's preferences. In this case we've exposed the config-file element to allow you to tweak your application manifests (iOS plist, Android Manifest).

As an example on iOS, if you wish to restrict the orientation of an application, you can use the orientation preference in config.xml, where 

    <preference name="orienation" value="portrait" />

will translate to the following in your iOS Property List:

    <key>UISupportedInterfaceOrientations</key>
    <array>
        <string>UIInterfaceOrientationPortrait</string>
        <string>UIInterfaceOrientationPortraitUpsideDown</string>
   	</array>

But suppose you don't want to allow PortraitUpsideDown? So specify your own xml for this property instead:

    <gap:config-file platform="ios" parent="UISupportedInterfaceOrientations" overwrite="true">
        <array>
            <string>UIInterfaceOrientationPortrait</string>
        </array>
    </gap:config-file>

To check and debug the resulting Property List file, simply rename your .ipa file to .zip, unzip it, and examine the Info.plist file.


<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="7-creating-client-applications-with-oauth.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>