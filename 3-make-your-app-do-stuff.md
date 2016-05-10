---
layout: module
title: Make Your App Do Stuff
---

### Go Beyond A Webapp

Outside of standard web functionality, the useful native app fuctionality can be found in **cordova plugins**:

https://cordova.apache.org/plugins/

Ways to pull a plugin into your app on PhoneGap Build:

1. From npm:

        <plugin name="phonegap-plugin-push" source="npm" />

2. From a git repo:

        <plugin spec="https://github.com/phonegap/phonegap-plugin-push.git#1.6.3" source="git" />

3. ~[PhoneGap Build's hosted repository](https://build.phonegap.com/plugins)~:
  With the above two options, including private repositories, this repository can no longer be submitted to, 
  and should no longer be used. For reference anyways:

        <plugin name="com.phonegap.plugins.barcodescanner" source="pgb" />


See the individual plugins' documentation for it's usage and Javascript API.


<div class="row" style="margin-top:40px;">
<div class="col-sm-12">
<a href="4-the-pgb-development-cycle.html" class="btn btn-default pull-right">Next <i class="glyphicon
glyphicon-chevron-right"></i></a>
</div>
</div>