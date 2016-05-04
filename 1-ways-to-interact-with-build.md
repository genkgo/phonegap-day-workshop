## Ways to Interact with Build

### UI

https://build.phonegap.com/apps

### PhoneGap CLI

```
phonegap remote --help
```

```
phonegap create path/to/my-app "com.example.app" "My App"
cd path/to/my-app
phonegap login
phonegap remote build android
phonegap run android
```

### REST API (write your own scripts)

**Examples:**

- Get your profile:
	```
	curl https://build.phonegap.com/api/v1/me?auth_token=1234567890
	```

- Create an app:
	```
	curl -F file=@/Users/ryanw/dev/testapp.zip -F 'data={ "title":"whatever", "create_method":"file"}' https://build.phonegap.com/api/v1/apps?auth_token=1234567890
	```


[Full API Documentation](http://docs.build.phonegap.com/en_US/developer_api_api.md.html#PhoneGap%20Build%20Developer%20API)

[next](2-make-your-app-do-stuff.md)
