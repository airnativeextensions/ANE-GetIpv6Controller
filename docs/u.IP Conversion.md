
The `getIpv6()` function is a simple conversion utility to convert an IP address into the appropriate IPv4 / IPv6 address based on the current network environment.


```as3
var ip:String = "192.0.2.1";

var ipData:String = GetIpv6Controller.instance.getIpv6( ip );
```

The returned string will be dependent on the environment:
- IPv4: `192.0.2.1&&ipv4`
- IPv6: `2001:2:0:1baa::c000:201&&ipv6`




