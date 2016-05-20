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

-----

#### Example: Simple Barcode Scanner

Add two plugins to your config.xml file:

    <plugin name="phonegap-plugin-barcodescanner" />
    <plugin name="cordova-plugin-inappbrowser" />

Add a clickable button to your index.html file:

    <!DOCTYPE html>
	<html>
	  <head>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
	  </head>
	  <body>
	    <p>Can we drink the beer yet</p>
	    <a href="#" id="scan">SCAN</a>
	  </body>
	  <script src="cordova.js"></script>
	  <script src="index.js"></script>
	</html>

And an index.js file:

	var app = {

		initialize: function() {
			document.addEventListener('deviceready', this.deviceReady, false);
			document.addEventListener('click', this.scan, false);
		},

		deviceReady: function() {
			console.log('Device Ready!')
		},

		scan: function() {
			cordova.plugins.barcodeScanner.scan(app.onscan);
		},

		onscan: function(result) {
			cordova.InAppBrowser.open(result.text, '_blank');
		}

	};

	app.initialize();


The [Star Track app](https://github.com/phonegap/phonegap-app-star-track) that we built earlier also has some good examples of plugins.

    https://github.com/phonegap/phonegap-app-star-track.git


<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="4-the-pgb-development-cycle.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>