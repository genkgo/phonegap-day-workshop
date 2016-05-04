## PhoneGap Build and the Development Cycle

### Debugging

Without being directly connected to a device and having a native SDK debugger, how do you inspect and debug your app?

#### Android

- **OSX & Windows**: Chrome Remote Developer Tools

#### iOS

- **OSX**: Safari JavasScript Developer Tools
- **Windows**: Weinre

#### Windows Phone

- **OSX & Windows**: Weinre

#### Quickly Deploying Changes - Hydration

PhoneGap Build offers a tool called **Hydration** which allows you to quickly upload and deploy changes to your PhoneGap app's web assets (HTML, JS, CSS) without doing a full install. Its important to note that when you update your config.xml, including addition of any plugins, a full app rebuild and reinstall is required for the changes to take effect.

[next](4-generating-keys-and-publishing-your-app.md)