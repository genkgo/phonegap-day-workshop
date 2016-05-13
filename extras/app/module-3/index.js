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