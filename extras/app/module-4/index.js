var app = {

	initialize: function() {
		document.addEventListener('deviceready', this.deviceReady, false);
		document.getElementById('scan').addEventListener('click', this.scan, false);
		document.getElementById('vibrate').addEventListener('click', this.vibrate, false);
	},

	deviceReady: function() {
		console.log('Device Ready!')
	},

	scan: function() {
		cordova.plugins.barcodeScanner.scan(app.onscan);
	},

	onscan: function(result) {
		cordova.InAppBrowser.open(result.text, '_blank');
	},

	vibrate: function() {
		navigator.vibrate(3000)
	}

};

app.initialize();