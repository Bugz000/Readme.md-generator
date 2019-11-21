#singleinstance, force
Gui, Add, Button, x12 y9 w70 h20 gSelectFolder, Proj folder
Gui, Add, Edit, x92 y9 w300 h20 vProjectFolder, 

Gui, Add, Text, x12 y39 w50 h20 , image url
Gui, Add, Edit, x92 y39 w300 h20 vImageURL, 

Gui, Add, Text, x12 y69 w50 h20 , Forum url
Gui, Add, Edit, x92 y69 w300 h20 vForumURL, 

Gui, Add, Text, x12 y99 w70 h20 , Project Name
Gui, Add, Edit, x92 y99 w300 h20 vProjectName, 

Gui, Add, Text, x12 y129 w70 h20 , Project Desc
Gui, Add, Edit, x92 y129 w300 h20 vProjectDescription, 

Gui, Add, Text, x12 y159 w60 h20 , Install guide
Gui, Add, Edit, x92 y159 w300 h50 vInstallGuide, 

Gui, Add, Text, x12 y219 w70 h20 , Featurelist
Gui, Add, Edit, x92 y219 w300 h70 vFeatureList, 

Gui, Add, Text, x12 y299 w70 h20 , Usage Guide
Gui, Add, Edit, x92 y299 w300 h50 vUsageGuide, 

Gui, Add, Button, x12 y359 w380 h30 gExport, Export

Gui, Show, x127 y87 h399 w410, Readme.MD generator

Return

SelectFolder:
FileSelectFolder, SelectedFolder, E:\Dropbox\AHK\
if !(SelectedFolder)
	return
guicontrol,, ProjectFolder, % SelectedFolder
guicontrol,, projectname, % strreplace(Selectedfolder, "E:\Dropbox\AHK\")
return
GuiClose:
ExitApp
return
Export:
gui, submit, nohide
if !(ProjectFolder) OR !(imageURL) OR !(Projectname) OR !(Projectdescription) OR !(installGuide) OR !(Featurelist)
	msgbox fill out the fields properly fool!
fileread, gitignore, %ProjectFolder%\.gitignore
o.= "<a href=" chr(34) "Bugz000.co.uk" chr(34) "><img src=" chr(34) ImageURL chr(34) " title=" chr(34) "Bugz000.co.uk" chr(34) " alt=" chr(34) "Bugz000.co.uk" chr(34) "></a>"
o.="`n" 
o.="`n # " ProjectName
o.="`n" 
o.="`n > " ProjectDescription
o.="`n" 
o.="`n" 
o.="`n ## Contents"
o.="`n" 
o.="`n - [Installation](#installation)"
o.="`n - [Features](#features)"
if (UserGuide)
	o.="`n - [Usage](#Usage)"
o.="`n - [Support](#support)"
o.="`n - [License](#license)"
o.="`n - [Stats](#Stats)"
o.="`n - [Bugs](#Bugs)"
o.="`n - [Requests](#Requests)"
o.="`n" 
o.="`n ---"
o.="`n" 
o.="`n ## Installation"
o.="`n"
o.="`n" InstallGuide 
o.="`n" 
o.="`n ### Clone"
o.="`n" 
o.="`n - Clone this repo to your local machine using `https://github.com/Bugz000/Timelapse-Creator.git`"
o.="`n"
o.="`n[Back to top](#Contents)"
o.="`n ## Features"
o.="`n" featurelist
o.="`n"
if (UserGuide)
	o.="`n ## Usage`n" UsageGuide
o.="`n ## Support"
o.="`n" 
o.="`n Reach out to me at;"
o.="`n" 
o.="`n - Website at <a href=" chr(34) "bugz000.co.uk" chr(34) " target=" chr(34) "_blank" chr(34) ">`Bugz000.co.uk`</a>"
if (forumURL)
	o.="`n - Forum post at <a href=" chr(34) "https://www.autohotkey.com/boards/viewtopic.php?f=6&t=69856" chr(34) " target=" chr(34) "_blank" chr(34) ">`Autohotkey.com`</a>"
o.="`n - Facebook at <a href=" chr(34) "https://www.facebook.com/bugz000" chr(34) " target=" chr(34) "_blank" chr(34) ">`Facebook`</a>"
o.="`n - IRC at <a href=" chr(34) "https://kiwiirc.com/nextclient/irc.freenode.net/#ahk" chr(34) " target=" chr(34) "_blank" chr(34) ">`#AHK`</a>"
o.="`n"
o.="`n[Back to top](#Contents)"
o.="`n ---"
o.="`n" 
o.="`n ## About me"
o.="`n" 
o.="`n father to my son, Hunter, and with my beautiful wife and fantastic mother, Kaylin, living in the UK, avid hobbyist!"
o.="`n" 
o.="`n enjoying all aspects of life, photography, archery, motorcycling, aquariums, astronomy, and ofcourse, computers!"
o.="`n" 
o.="`n I have been coding AHK and been an active member of the AHK irc community for over 10 years."
o.="`n" 
o.="`n my main passion being speed, ease of use, efficiency, batch and parallel processing within ahk."
o.="`n" 
o.="`n ## Donations"
o.="`n" 
o.="`n i just do this for fun, mainly because i hate charging people money for my work as we all have different financial means, so i always prefer to " chr(34) "charge" chr(34) " people however much it is worth to them, maybe it's $10, maybe it's $0! it doesn't matter! so long as this software isn't put out of your reach simply due to money, like other more greedy developers!"
o.="`n for this reason, none of my assistance or software costs money, and it never will! it's all free, with no adverts other than a single convenient, unobtrusive " chr(34) "support me" chr(34) " link."
o.="`n" 
o.="`n Any money we receive will go straight towards bettering my sons life in any way we can!"
o.="`n" 
o.="`n [![Support via PayPal](https://cdn.rawgit.com/twolfson/paypal-github-button/1.0.0/dist/button.svg)](https://www.paypal.me/Bugz000/)"
o.="`n" 
o.="`n"
o.="`n[Back to top](#Contents)"
o.="`n ---"
o.="`n" 
o.="`n ## License"
o.="`n" 
o.="`n [![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)"
o.="`n" 
o.="`n - **[MIT license](http://opensource.org/licenses/mit-license.php)**"
o.="`n - Copyright 2019 © <a href=" chr(34) "http://www.Bugz000.co.uk" chr(34) " target=" chr(34) "_blank" chr(34) ">Bugz000</a>."
o.="`n"
o.="`n[Back to top](#Contents)"
o.="`n ---"
o.="`n ## Stats"
o.="`n - Readme.MD generated by <a href=" chr(34) "https://github.com/Bugz000/" chr(34) " target=" chr(34) "_blank" chr(34) ">`Bugz000's readme.MD Generator`</a>"
o.="`n - File Structure:"
o.="`n"
o.="`n" StrReplace(DirToString(ProjectFolder), "`n", "<br/>")
o:= StrReplace(o, A_Tab, "&nbsp;&nbsp;&nbsp;")
o.="`n"
o.="`n[Back to top](#Contents)"
o.="`n ---"
o.="`n ## Bugs"
o.="`n - name: Bug report"
o.="`n - about: Create a report to help us improve"
o.="`n - title: ''"
o.="`n - labels: ''"
o.="`n - assignees: ''"
o.="`n "
o.="`n ---"
o.="`n "
o.="`n **Describe the bug**"
o.="`n A clear and concise description of what the bug is."
o.="`n "
o.="`n **To Reproduce**"
o.="`n Steps to reproduce the behavior:"
o.="`n 1. Go to '...'"
o.="`n 2. Click on '....'"
o.="`n 3. Scroll down to '....'"
o.="`n 4. See error"
o.="`n "
o.="`n **Expected behavior**"
o.="`n A clear and concise description of what you expected to happen."
o.="`n "
o.="`n **Screenshots**"
o.="`n If applicable, add screenshots to help explain your problem."
o.="`n "
o.="`n **Additional context**"
o.="`n Add any other context about the problem here."
o.="`n"
o.="`n[Back to top](#Contents)"
o.="`n ---"
o.="`n ## Requests"
o.="`n - name: Feature request"
o.="`n - about: Suggest an idea for this project"
o.="`n - title: ''"
o.="`n - labels: ''"
o.="`n - assignees: ''"
o.="`n"
o.="`n---"
o.="`n"
o.="`n**Is your feature request related to a problem? Please describe.**"
o.="`nA clear and concise description of what the problem is. Ex. I'm always frustrated when [...]"
o.="`n"
o.="`n**Describe the solution you'd like**"
o.="`nA clear and concise description of what you want to happen."
o.="`n"
o.="`n**Describe alternatives you've considered**"
o.="`nA clear and concise description of any alternative solutions or features you've considered."
o.="`n"
o.="`n**Additional context**"
o.="`nAdd any other context or screenshots about the feature request here."
o.="`n"
o.="`n[Back to top](#Contents)"

FileDelete, %projectFolder%\Readme.MD
Fileappend, %o%, %projectFolder%\Readme.MD
return
DirToString(dir, i:="", root="")
	{
		Global GitIgnore
		if (root)
			if instr(gitignore, trim(StrReplace(dir, (root?root:dir), ""), "\")"/") OR StrReplace(dir, (root?root:dir), "") = "\.git"
				return ""
		folder := StrReplace(dir, (root?root:dir), "")
		if !(folder)
			folder := "root"
		o.= i "[" Folder "]`n"
		loop, files, %Dir%\*.*
				o.= i A_tab " => " StrReplace(A_Loopfilefullpath, (root?root:dir) "\") "- " A_LoopFileSizeKB "kb`n"
		loop, files, %Dir%\*.*, D
			o.= DirToString(A_LoopFileFullPath, i A_Tab, dir)
		return o
	}

