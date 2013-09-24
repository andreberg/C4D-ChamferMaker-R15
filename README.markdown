Introduction
------------

**Chamfer Maker** is a generator plugin that allows you to add  
beveled edges to any 3D object, procedural or polygonal, while  
keeping the object manager tree fully procedural. This means, you  
can get nice accentuated edges that will make your renders look  
much more realistic while keeping the power to change things after  
the fact.

It also has a few extra tricks under its sleeve for dealing with  
geometry a bit more complicated. 

Since Chamfer Maker uses CINEMA 4D's bevel tool under the hood, which  
was recently updated by MAXON the plugin was changed to make use of the  
new tool.

Support For Older Scenes
------------------------

The plugin keeps the old interface while providing a mode for R15 with  
the new bevel tool interface and tries to emulate the old bevel tool  
presets like Convex, Concave, etc. as well as possible. This was done  
to support opening of older scenes that were saved with the plugin in  
effect.

However, note that since the bevel tool changed dramatically there will  
be differences. Most notably:

- the *Variance* parameter is gone. In the old tool this gave you random  
  point offsets on top of the bevel. Variance in the old interface now  
  changes the new bevel tool's Tension parameter which most closely  
  resembles the old effect. It is, then, no longer random but uniform.
  
- the triangulation of the newly inserted edges uses a different algorithm.  
  This should only matter in complex models that need a large bevel. 
 
Limitations
-----------

The new bevel tool in R15 behaves differently depending on the currently  
active modelling mode. Right now Chamfer Maker does not follow this   
behavior and supports edge mode only. I may change this in the future. 

Installation
------------

Compile and install to CINEMA 4D's plugin folder  
(or the equivalent in the user preferences folder).

If you do not want to compile the plugin, you can find   
a pre-compiled binary distribution in the `dist` folder  
of this repository. You don't have to fork the repository.  

If you wish you don't even have to download the complete  
repository ZIP file that includes the source.
  
Just browse to the `dist` folder in this repository and   
click "View Raw" on one of the ZIP files found in the dist  
folder to download just that ZIP.

Supported Versions
------------------

This version of the plugin only supports CINEMA 4D R15 and later.  

Older versions for R12 through R14 are included in the dist ZIP and  
the source for those versions can be found at the [old repository](http://github.com/andreberg/C4D-ChamferMaker-R12 "Chamfer Maker R12-R14").

_The source included in this repository will not compile with older  
CINEMA 4D versions and their APIs._

Development
-----------

If you want to use the included Xcode 4/VisualStudio 2012 projects  
it is crucial to put the downloaded source folder inside CINEMA 4D's  
plugin directory, under the main installation path (as opposed to   
the plugin folder found in user prefs). This is because all paths  
relevant to the compiler/linker are set up relative to the main  
plugin folder.

Basic Usage
-----------

Go to the *Plugins* menu, choose *Chamfer Maker*.  
This will instantiate the generator object in the Object Manager.  

From hereon you can put the model objects you want bevelled under the  
generator object just as you would with any generator (e.g. a HyperNURBS).

In the generators Attribute Manager interface set the targeting mode  
and bevel away.


Attribution
-----------

Created by Antosha Marchenko in 2006.  
Updated and maintained from the 2006 source code by yours truly.

Copyright
---------

Copyright 2006, Antosha Marchenko  
Copyright 2011, 2013, André Berg

License
-------

Since I couldn't find a license notice with the source I downloaded,  
I am putting it under the following license:

Licensed under the Apache License, Version 2.0 (the "License");  
you may not use this file except in compliance with the License.  
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software  
distributed under the License is distributed on an "AS IS" BASIS,  
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and  
limitations under the License.  
