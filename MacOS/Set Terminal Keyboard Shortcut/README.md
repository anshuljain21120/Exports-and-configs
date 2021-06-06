# MacOS-Configs/Set Terminal Keyboard Shortcut
These steps will allow you to open the Mac terminal from anywhere with just a keyboard shortcut.

--------------------

## Create Automator Document
* Launch Automator. Create a document of type “Quick Action”(In older versions of macOS, use the “Service” template) :
![step_1](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Set%20Terminal%20Keyboard%20Shortcut/step_1.jpg)
* In the new Automator document, add a “Run AppleScript” action. (You can type “run applescript” into the search field at the top of the action list to find it.) Here's the AppleScript to paste into the action:
```applescript
on run {input, parameters}
	tell application "Terminal"
		if it is running then
			do script ""
		end if
		activate
	end tell
end run



```
> **If the Script doesn't work**: 
> * To check whether the script is working first click on the build icon(Hammer-shaped button) above code area. Then click on run script(play button).
> * If anytime you find that the script is not working in some application then you can come back and change the code to: 
> ```applescript
> on run {input, parameters}
> 	tell application "Terminal"
> 		if it is running then
> 			do script ""
> 		end if
> 		activate
> 	end tell
> 	return input
> end run
> 
> 
> 
> ```

* Set the “Workflow receives” popup to “no input”. It should look like this overall:
![step_2](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Set%20Terminal%20Keyboard%20Shortcut/step_2.jpg)
* Save the document with the name “New Terminal”. Then go to the Automator menu (or the app menu in any running application) and open the Services submenu. You should now see the “New Terminal” quick action:

![step_3](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Set%20Terminal%20Keyboard%20Shortcut/step_3.png)

* If you click the “New Terminal” menu item, you'll get a dialog box:
![step_4](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Set%20Terminal%20Keyboard%20Shortcut/step_4.png)
* Click OK to allow the action to run. You'll see this dialog once in each application that's frontmost when you use the action. In other words, the first time you use the action while Finder is frontmost, you'll see the dialog. And the first time you use the action while Safari is frontmost, you'll see the dialog. And so on. After you click OK in the dialog, Terminal should open a new window.

--------------------

## Assign This A Keyboard Shortcut
* Choose the “Services Preferences…” item from the Services menu. (Or launch System Preferences, choose the Keyboard pane, then choose the Shortcuts tab, then choose Services from the left-hand list.) Scroll to the bottom of the right-hand list and find the New Terminal service. Click it and you should see an “Add Shortcut” button:
![step_5](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Set%20Terminal%20Keyboard%20Shortcut/step_5.png)
* Click the button and press your preferred keyboard shortcut. Then, scratch your head, because (when I tried it) the Add Shortcut button reappears. But click the button again and you should see your shortcut:
![step_6](https://github.com/anshuljain21120/Exports-and-configs/blob/master/MacOS/Set%20Terminal%20Keyboard%20Shortcut/step_6.png)
* Now you should be able to press your keyboard shortcut in most circumstances to get a new terminal window.

--------------------

## Known Limitation 
* Does not work from the desktop.
