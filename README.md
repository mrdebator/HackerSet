# HackerSet
A collection of tools and scripts I use for Capture the Flags, HackTheBox, and Penetration Testing.

## Elements
- *setupScript.sh* 
  - A custom shell script to install security, networking, and penetration testing tools. 
  - Utilizes the `apt` package manager.
  - Script, therefore, works on most Debian, Ubuntu systems.
- scripts
  - RCE shell exploit for OpenNetAdmin
  - Python exploit for redis
  - linenum.sh for enumerating linux systems
  - caesar.py; custom python script to brute force caesar ciphers (https://github.com/mrdebator/OfflineCaesar)
  - RSA-Decoder.py; custom python script to decode RSA encryption (https://github.com/mrdebator/BabyRSA)
  - WhereIsBSSID.py; python tool to geolocate devices based on their MAC address
- dirsearch
  - Added my favorite web enumeration script.
- webshells
  - Added a bunch of webshells from github.
  - Webshell languages: aspx, php, jsp, perl, etc.
  
## Inspiration
I've always spent a significant amount of time setting up and configuring a new Linux distro every time I install a new virtual machine or OS. This is a small effort, in many, to make that process seamless. 

### Future Plans

- More tools
- Better scripts
- More cherry picked exploits for popular services

### Legal
The above scripts, tools, and libraries are taken from Open Source Initiatives with the sole purpose of maintaining a unified collection of tools I use. All relevant license information and documentation is unaltered.

MIT License

Copyright 2020 - Ansh Chandnani

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
