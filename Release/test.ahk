ProjectFolder := "E:\Dropbox\AHK\Zoomy"
fileread, gitignore, %ProjectFolder%\.gitignore
msgbox % DirToString(ProjectFolder)


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