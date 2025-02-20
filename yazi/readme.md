# How to make yazi detect file 
- Yazi relies on file(1) to detect the mime-type of the file, and the easiest and most reliable way to get it on Windows is to install Git for Windows and use the file.exe that comes with it.

- Install Git for Windows by running the official installer, or through your package manager of choice.
To allow Yazi to use file(1), add <Git_Installed_Directory>\usr\bin\file.exe to your YAZI_FILE_ONE environment variable, which differs depending on how you installed Git:
If you installed Git with the installer, it would be C:\Program Files\Git\usr\bin\file.exe.
If you installed Git with Scoop, it would be C:\Users\<Username>\scoop\apps\git\current\usr\bin\file.exe.
Restart your terminal.
This is the ONLY way we recommend. We do not recommend install file via Scoop or Chocolatey, since they cannot handle Unicode filenames (such as oliver-sjöström.jpg) properly and lack some required parameters.

- Most users already have Git installed, and Yazi is also hosted via Git, so this usually isn't an issue. But if you really don't have/want to install it, the mime-ext.yazi plugin can help, which use a extension database instead of relying on the file(1) binary.
# Where to put config file
- These files will be copy to %appdata%
# Credits
long9657
