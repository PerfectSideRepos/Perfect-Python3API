# Perfect-Python3API

<p align="center">
    <a href="http://perfect.org/get-involved.html" target="_blank">
        <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
    </a>
</p>

<p align="center">
    <a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
    </a>  
    <a href="https://gitter.im/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_2_Git.jpg" alt="Chat on Gitter" />
    </a>  
    <a href="https://twitter.com/perfectlysoft" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
    </a>  
    <a href="http://perfect.ly" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
    </a>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat" alt="Swift 5.3>
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
    </a>
    <a href="http://perfect.org/licensing.html" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="http://twitter.com/PerfectlySoft" target="_blank">
        <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
    </a>
    <a href="https://gitter.im/PerfectlySoft/Perfect?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" target="_blank">
        <img src="https://img.shields.io/badge/Gitter-Join%20Chat-brightgreen.svg" alt="Join the chat at https://gitter.im/PerfectlySoft/Perfect">
    </a>
    <a href="http://perfect.ly" target="_blank">
        <img src="http://perfect.ly/badge.svg" alt="Slack Status">
    </a>
</p>

C module import for Python 3

This files in this repository are part of the requirements for Swift Package Manager support and should not need to be manually cloned.

[Perfect-Python](https://github.com/PerfectlySoft/Perfect-Python)


## Quick start 

### Mac OSX

Library installation:


```
$ sudo mkdir /usr/local/Frameworks
$ sudo chown $(whoami):admin /usr/local/Frameworks
$ brew install python
```


Verification:

```
$ pkg-config python3 --libs --cflags
```
### Ubuntu 16.04 LTS

Library installation:

```
$ sudo apt-get install -y libpython3-dev python3
```

Verification:

```
$ pkg-config python-3.5 --cflags --libs
```

### Note for macOS
`sudo vi /usr/local/lib/pkgconfig/python3.pc`

```
# See: man pkg-config
prefix=/usr/local/opt/python@3.8/Frameworks/Python.framework/Versions/3.8
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: Python
Description: Build a C extension for Python
Requires:
Version: 3.8
Libs.private: -lintl -ldl   -framework CoreFoundation
Libs: -L${libdir} # <------------------------- Fix this! originally it looks empty.
Cflags: -I${includedir}/python3.8
```
## Further Information
For more information on the Perfect project, please visit [perfect.org](http://perfect.org).
