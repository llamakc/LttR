<p align="center">
  <a href="https://github.com/llamakc/LttR"><img src="http://quantifier.org/~brock/lttr.png" align="center" /></a>  
</p>
<p align="center">

<h1>LttR</h1>

Here is a short script that lets you listen to one of a few streaming radio stations from the command line. Is it a configuration file? No. Is it an excuse to make a pull request? Yes.

Submit a pull request to have your favorite station considered for inclusion.

To use:
```
$ curl -o lttr.sh https://raw.githubusercontent.com/llamakc/LttR/master/lttr.sh && chmod +x lttr.sh
$ ./lttr.sh
```

When available, Song and Artist information from ```icy-title``` using something like 
```
$ echo '{ "command": ["get_property_string", "filtered-metadata"] }' | socat - /tmp/mpvsocket | jq '.data' | sed 's/"{\\"icy-title\\":\\"//g' | sed 's/\\"}"//g' 
```

Anyway, thanks for all the fish.

**TO DO LIST**

- [x] Update the .dot file to reflect branding
- [x] Change the name of the file to lttr.sh
- [x] Create a run script
- [x] Choose a license


**ECCE HOMO!!!**

Notepad was not used 
 
 **Runtime Dependencies**

This script depends on <a href="https://github.com/mpv-player/mpv">mpv</a>. Install using your distro's preferred package management system. The script will error and instruct the user to install mpv.

 **License**
 
 ```listen-to-the-radio.sh``` (deprecated) and ```lttr.sh``` are Copyright 2020 \\quantifier\\consortium\\

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 
 **Contact**
 
 - **User IRC Channel**: ```#LttR``` on ```irc.freenode.net``` 
