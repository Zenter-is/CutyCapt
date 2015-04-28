# CutyCapt

CutyCapt is a small cross-platform command-line utility to capture WebKit's rendering of a web page into a variety of vector and bitmap formats, including SVG, PDF, PS, PNG, JPEG, TIFF, GIF, and BMP. See [IECapt](http://iecapt.sourceforge.net/) for a similar tool based on Internet Explorer.

## Samples

Here are some samples of CutyCapt generated renderings:

- [PNG Snapshot](http://cutycapt.sourceforge.net/digg.png) of [http://digg.com](http://digg.com/)
- [PNG Snapshot](http://cutycapt.sourceforge.net/css-co-ltd.png) of [http://csszengarden.com/?cssfile=/209/209.css&page=0](http://csszengarden.com/?cssfile=/209/209.css&page=0)
- [SVG Snapshot](http://cutycapt.sourceforge.net/silverlight.net.svgz) of [http://silverlight.net](http://silverlight.net/)
- [PDF Snapshot](http://cutycapt.sourceforge.net/silverlight.net.pdf) of [http://silverlight.net](http://silverlight.net/)

## Status

CutyCapt has a number of known quirks, most of which are caused by problems with Qt and/or WebKit. For example, while plugin support can be enabled, and the plugins execute properly, their rendering cannot be captured on some platforms. Use of with caution.

## Requirements

CutyCapt depends on Qt [5.0.0+](http://www.qtsoftware.com/).

## Download


## Usage

Open a command prompt and ask for help:

```
 CutyCapt --help

 -----------------------------------------------------------------------------
 Usage: CutyCapt --url=http://www.example.org/ --out=localfile.png            
 -----------------------------------------------------------------------------
  --help                         Print this help page and exit                
  --url=<url>                    The URL to capture (http:...|file:...|...)   
  --out=<path>                   The target file (.png|pdf|ps|svg|jpeg|...)   
  --out-format=<f>               Like extension in --out, overrides heuristic 
  --min-width=<int>              Minimal width for the image (default: 800)   
  --min-height=<int>             Minimal height for the image (default: 600)  
  --max-wait=<ms>                Don't wait more than (default: 90000, inf: 0)
  --delay=<ms>                   After successful load, wait (default: 0)     
  --user-style-path=<path>       Location of user style sheet file, if any    
  --user-style-string=<css>      User style rules specified as text           
  --header=<name>:<value>        request header; repeatable; some can't be set
  --method=<get|post|put>        Specifies the request method (default: get)  
  --body-string=<string>         Unencoded request body (default: none)       
  --body-base64=<base64>         Base64-encoded request body (default: none)  
  --app-name=<name>              appName used in User-Agent; default is none  
  --app-version=<version>        appVers used in User-Agent; default is none  
  --user-agent=<string>          Override the User-Agent header Qt would set  
  --javascript=<on|off>          JavaScript execution (default: on)           
  --java=<on|off>                Java execution (default: unknown)            
  --plugins=<on|off>             Plugin execution (default: unknown)          
  --private-browsing=<on|off>    Private browsing (default: unknown)          
  --auto-load-images=<on|off>    Automatic image loading (default: on)        
  --js-can-open-windows=<on|off> Script can open windows? (default: unknown)  
  --js-can-access-clipboard=<on|off> Script clipboard privs (default: unknown)
  --print-backgrounds=<on|off>   Backgrounds in PDF/PS output (default: off)  
  --zoom-factor=<float>          Page zoom factor (default: no zooming)       
  --zoom-text-only=<on|off>      Whether to zoom only the text (default: off) 
  --http-proxy=<url>             Address for HTTP proxy server (default: none)
  --inject-script=<path>         JavaScript that will be injected into pages  
  --script-object=<string>       Property to hold state for injected script   
  --expect-alert=<string>        Try waiting for alert(string) before capture 
  --debug-print-alerts           Prints out alert(...) strings for debugging. 
  --smooth                       Attempt to enable Qt's high-quality settings.
  --insecure                     Ignore SSL/TLS certificate errors            
 -----------------------------------------------------------------------------
  <f> is svg,ps,pdf,itext,html,rtree,png,jpeg,mng,tiff,gif,bmp,ppm,xbm,xpm    
 -----------------------------------------------------------------------------
 The `inject-script` option can be used to inject script code into loaded web 
 pages. The code is called whenever the `ExecuteExtrenalJavascript` signal
 is received. When `script-object` is set, an object under the specified name 
 will be available to the script to maintain state across page loads. When the
 `expect-alert` option is specified, the shot will be taken when a script in- 
 vokes alert(string) with the string if that happens before `max-wait`. These 
 options effectively allow you to remote control the browser and the web page.
 This an experimental and easily abused and misused feature. Use with caution.
 -----------------------------------------------------------------------------
 http://cutycapt.sf.net - (c) 2003-2013 Bjoern Hoehrmann - bjoern@hoehrmann.de

 ```
 
## Build Instructions

If your system is set up to compile Qt applications, building CutyCapt should be a simple matter of checking out the source code and running qmake and your version of make. As an example, if you are running Ubuntu 14.04 trusty, the following should do:

```
sudo apt-get install git g++ qt5-default libqt5svg5-dev libqt5webkit5-dev
git clone https://github.com/Zenter-is/CutyCapt.git
cd CutyCapt
qmake
make && sudo make install
cutycapt --url=http://www.example.org --out=example.png
```

## Using CutyCapt without X server

You cannot use CutyCapt without an X server, but you can use e.g. Xvfb as light-weight server if you are not running an interactive graphical desktop environment. For example, you could use:


```
xvfb-run --server-args="-screen 0, 1024x768x24" cutycapt --url=... --out=...
```
  
##Author

[Björn Höhrmann](http://bjoern.hoehrmann.de) [bjoern@hoehrmann.de](mailto:bjoern@hoehrmann.de) ([Donate via SourceForge](http://sourceforge.net/donate/index.php?user_id=188003), [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&amp;business=bjoern@hoehrmann.de&amp;item_name=Support+Bjoern+Hoehrmann))

##Contributers

- Björn Höhrmann &lt;bjoern@hoehrmann.de&gt;
- Andri Thorlacius &lt;andri.thorlacius@gmail.com&gt;
