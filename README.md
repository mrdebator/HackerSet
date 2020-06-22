# HackerSet
A collection of tools and scripts I use for Capture the Flags, HackTheBox, and Penetration Testing.

## Elements
* *setupScript.sh* 
  - A custom shell script to install security, networking, and penetration testing tools. 
  - Utilizes the `apt` package manager.
  - Script, therefore, works on most Debian, Ubuntu systems.
  - Installs and configures all prerequisites and dependancies. 
    
* *msfConfigure.sh*
  - A custom script to install the metasploit framework. (https://github.com/rapid7/metasploit-framework)
  - Utilizes the `apt` package manager.
  - Installs and configures all prerequisites and dependancies. 
* scripts
  - RCE shell exploit for OpenNetAdmin
  - Python exploit for redis
  - linenum.sh for enumerating linux systems
  - caesar.py; custom python script to brute force caesar ciphers (https://github.com/mrdebator/OfflineCaesar)
  - RSA-Decoder.py; custom python script to decode RSA encryption (https://github.com/mrdebator/BabyRSA)
  - WhereIsBSSID.py; python tool to geolocate devices based on their MAC address
* webshells
  - Added a bunch of webshells from github.
  - Webshell languages: aspx, php, jsp, perl, etc.
* wordlists
  - password.lst
  - rockyou.txt
  
## Inspiration
I've always spent a significant amount of time setting up and configuring a new Linux distro every time I install a new virtual machine or OS. This is a small effort, in many, to make that process seamless. 

### Future Plans

* More tools
* Better scripts
* More cherry picked exploits for popular services

### Legal
The above scripts, tools, and libraries are taken from Open Source Initiatives with the sole purpose of maintaining a unified collection of tools I use. All relevant license information and documentation is unaltered.
