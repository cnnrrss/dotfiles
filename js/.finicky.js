// Use https://finicky-kickstart.now.sh to generate basic configuration
// Learn more about configuration options: https://github.com/johnste/finicky/wiki/Configuration

module.exports = {
  defaultBrowser: "Firefox",
  // rewrite: [
  //  {
      // Redirect all urls to use https
  //    match: ({ url }) => url.protocol === "http",
  //    url: { protocol: "https" }
  //  }
  // ],
  handlers: [
    {
      // Open apple.com and example.org urls in Safari
      match: ["apple.com/*", "example.org/*"],
      browser: "Safari"
    },
	{
		match: ["localhost*"],
		browser: "Google Chrome"
	},
	{
	  match: ["device.sso.*", "kablamo.awsapps.*"],
      browser: "Google Chrome"
    },
	{
      match: "open.spotify.com/*",
  	  browser: "Spotify"
	},
	{
      match: [
        "zoom.us/*",
         finicky.matchDomains(/.*\zoom.us/),
         /zoom.us\/j\//,
      ],
      browser: "us.zoom.xos"
    }
  ]
}

