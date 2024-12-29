# FiveM-Handcuff
A simple script that allows you to cuff/uncuff players.

# Requirements
* **EssentialMode** *v2.x.x (can be found on github)* OR **EssentialMode** *v1.x.x*

# Installation
1. Copy/paste code found in *cl_admin.lua* and *sv_admin.lua* into your **es_admin** lua files.
**OPTIONAL:** you can remove permissions to use these commands by changing
```
TriggerEvent('es:addGroupCommand', 'cuff', "user", function(source, args, user)
```
```
TriggerEvent('es:addGroupCommand', 'uncuff', "user", function(source, args, user)
```
to
```
TriggerEvent('es:addCommand', 'cuff', function(source, args, user)
```
```
TriggerEvent('es:addCommand', 'uncuff', function(source, args, user)
```



