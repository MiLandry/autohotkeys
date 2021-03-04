# autohotkeys

## how to use
Check out the repo
have windows autorun PilotLight.ahk
add shortcuts??



## Architecture

"properties" are hardcoded for each machine. do not check it.

pilot light starts everything.

engine script manages all 'quality of life stuff', ie...
sending emails, un, pw,

## Container
  The container 'contains" all the scripts too small to justify running as a persistent script, cluttering the sysstem tray,
  included in here is...
  spitters
  hotstring libraries



## Debugging
ctrl win alt and D to open debugger


## features to add

make f9 cycle through keyboard types
make F9 create a GUI instead of a bunch of keys



## tech debt
aoei

remove if thens and just run a home computer script and a work computer script depending on comp name.


pilot light will need to use the repo root to find the other scripts, for now, search replace is working okay for machine port


values everywhere, must consolidate



https://textik.com/#16a3eb73420db774




          bootstrap                      toggle / cycle layer                                     functionality


 pilot light (starts at boot) --+          landry keyboard
                                |          landry dev keyboard
                                |          (no keyboard) qwerty
                                |
                                |
                                |          form filler
                                |
                                |          Engine---------+ -+
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |
                                                             |                               +
                                                             |
                                                             |---------------------------+       mouse gestures

                                                                                                 email, un, pw spitters









## License
MIT

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

