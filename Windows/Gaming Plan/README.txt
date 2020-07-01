1. ADDING PowerPlan.pow IN YOUR SYSTEM

* PowerPlan.pow file contains a customised high performance Gaming plan which can either be made manually using GUI here: settings->System->Power & sleep->Additional Power settings->create a power plan

* OR, Add this exported power plan to your machine directly using one command. Enter this in cmd opened with "Run as administrator": powercfg -import "The full path to .pow file"
like for ex: powercfg -import "%UserProfile%\Downloads\PowerPlan.pow"

2. ADDING OPTION TO SWITCH POWER PLANS QUICKLY via DESKTOP RIGHT-CLICK MENU

* Open cmd anywhere and type: powercfg \L
* It will show you the list of all power plans with their unique GUIDs. We need the GUIDs so keep this open. 
* Next, open switch_powerplan_context_menu.reg in a text editor and replace the GUIDs there of all the respective power plans you want to, with what is there in the cmd. (I guess Seeing those pattern you can now build one too in .reg file.)
* Now save this file, close the text editor and double click the switch_powerplan_context_menu.reg file to run and add it into registry. Click Yes/okay on all the prompts that pops as there is a way we can change this completely back to normal and believe me this is not going to harm your computer.

	+	REMOVING THE RIGHT-CLICK MENU
	What we did was just added shortcut to right-click menu by creating a new folder in registry so deleting this folder is all we need to do to undo. So just run undo.reg and you're good as normal.
