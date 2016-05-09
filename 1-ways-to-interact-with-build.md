---
layout: module
title: Ways to Interact with Build
---


## Ways to Interact with Build

### Website

The most basic method to create apps on Build is [through the website upload UI](https://build.phonegap.com/apps). Create a directory to hold your PhoneGap Build app. At a minimum your app should have

1. A config.xml file:
        
        <widget xmlns="http://www.w3.org/ns/widgets" 
                xmlns:gap="http://phonegap.com/ns/1.0"
                xmlns:android="http://schemas.android.com/apk/res/android" 
                id="com.phonegap.build.demo" version="0.0.1">

	      <name>PoneGapBuild</name>
	      <description>It's just a demo.</description>
	      <author>PhoneGap Team</author>

	      <preference name="phonegap-version" value="cli-6.1.0" />

        </widget>

2. An index.html file:

        <!DOCTYPE html>
        <html>
    	<head>
    	  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
    	</head>
    	<body>
    	  <p>Can we start drinking yet?</p>
    	</body>
    	</html>


Zip up the contents of your app directory, and upload it to PhoneGap Build.

### PhoneGap CLI

Alternatively, if you're a command-line friendly user, you can use the Phonegap CLI to create an app and push it to Build:


```
npm install phonegap
phonegap remote --help
```


```
phonegap create path/to/pg-cli-app "com.phonegap.cli.demo" "PhonegapCLIApp"
cd path/to/pg-cli-app
phonegap login
phonegap remote build android
phonegap run android
# android-sdk required to run from command line
```

--------


Above we've shown you two ways to interact with PhoneGap Build -- the Website Interface, and the PhoneGap CLI. The latter utilizes PGB's REST API to interact with Build. You can use this API yourself to write your own build scripts, or even write third-party applications that integrate with PhoneGap Build.

**API Examples (using `curl` for simplicity):**

- Get your profile:

		curl https://build.phonegap.com/api/v1/me?auth_token=1234567890

- Create an app:

		curl -F file=@/Users/ryanw/dev/testapp.zip -F 'data={ "title":"whatever", "create_method":"file"}' https://build.phonegap.com/api/v1/apps?auth_token=1234567890



The API will be discussed in more detail later in the workshop. [Full API Documentation can be found here.](http://docs.build.phonegap.com/en_US/developer_api_api.md.html#PhoneGap%20Build%20Developer%20API)


<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="2-make-your-app-do-stuff.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>
