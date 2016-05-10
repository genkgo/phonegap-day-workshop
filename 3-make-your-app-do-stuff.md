---
layout: module
title: Using Plugins on Build
---

Outside of standard web functionality, native device fuctionality can be found in **cordova plugins**. Your main source for these is on npm, and the [cordova npm plugins are indexed here](https://cordova.apache.org/plugins/).

Ways to pull a plugin into your app on PhoneGap Build:

1. From npm:

        <plugin name="phonegap-plugin-barcodescanner" source="npm" />

2. From a git repo:

        <plugin spec="https://github.com/phonegap/phonegap-plugin-push.git#1.6.3" source="git" />

3. [<s>PhoneGap Build's hosted repository</s>](https://build.phonegap.com/plugins):
  With the above two options, including private repositories, this repository can no longer be submitted to, 
  and should no longer be used. For reference anyways:

        <plugin name="com.phonegap.plugins.barcodescanner" source="pgb" />


See the individual plugins' documentation for it's usage and Javascript API.

Example: Simple Barcode Scanner

Add two plugins to your config.xml file:

    <plugin name="phonegap-plugin-barcodescanner" />
    <plugin name="cordova-plugin-inappbrowser" />

Create a button, and invoke the scanner in the onclick event:

    $('#scan').on('click', function() {
    	cordova.plugins.barcodeScanner.scan(function(result) {
    		// invoke inappbrowser
    		var ref = cordova.InAppBrowser.open(result.text, '_blank', {});
    	}, 
    	function(error) {
    		alert('error! ' + error);
    	},
    	{} // options)
    });


<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="4-the-pgb-development-cycle.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>