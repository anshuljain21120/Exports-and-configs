# Windows/Gaming Plan
Creating/updating a system profile that manages power limits of the system. Gaming plan lets a windows machine reach its potential, although system might use more fans and battery/power while this plan is active. 

-----------------

## Adding a plan
* Creating a new plan can
	* either be made manually using GUI here: settings->System->Power & Sleep->Additional Power settings->Create a Power Plan
	* or, using a file. For this:
		* Download [this file](./PowerPlan.pow)
		* Open a cmd with administer privileges
		* Run `powercfg -import "The full path to .pow file"`, like for ex: `powercfg -import "%UserProfile%\Downloads\PowerPlan.pow"`

## Adding Option To Switch Power Plans Quickly Via Desktop Right-click Menu
* Open cmd anywhere and type: `powercfg /L`, it will show you the list of all power plans with their unique GUIDs. We need the GUIDs so keep this open. 
* Next, open switch_powerplan_context_menu.reg in a text editor and replace GUIDs of all the respective power plans you want to add to menu, with what is there in the cmd. (I guess Seeing those pattern you can now build one too in .reg file.)
* Now save this file, close the text editor and double click the switch_powerplan_context_menu.reg file to run and add it into registry. Click Yes/okay on all the prompts that pops as there is a way we can change this completely back to normal and this is not going to harm your computer.

> ## To remove this menu 
>	What we did was just added shortcut to right-click menu by creating a new folder in registry so deleting this folder is all we need to do to undo. So just double click [undo.reg](https://github.com/anshuljain21120/Exports-and-configs/blob/master/Windows/Gaming%20Plan/undo.reg) file and you are good as normal.
