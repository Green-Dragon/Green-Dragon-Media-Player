; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Green Dragon Media Player"
#define MyAppVersion "1.0.0.0"
#define MyAppPublisher "Green Dragon"
#define MyAppExeName "Green Dragon Media Player.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CAAFC1BB-B86F-40E0-83AC-82FBDDB8BA87}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=C:\Users\emils_000\Desktop\Git Stuff\Green-Dragon-Media-Player\Setup
OutputBaseFilename=Setup
SetupIconFile=C:\Users\emils_000\Desktop\Dragon\Green Dragon\greendragon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\emils_000\Desktop\Git Stuff\Green-Dragon-Media-Player\bin\Release\Green Dragon Media Player.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "C:\Windows\Fonts\Ubuntu-BI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Bold Italic"
Source: "C:\Windows\Fonts\Ubuntu-B_0.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Bold"
Source: "C:\Windows\Fonts\Ubuntu-C.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Condensed"
Source: "C:\Windows\Fonts\Ubuntu-L.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Light"
Source: "C:\Windows\Fonts\Ubuntu-LI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Light Italic"
Source: "C:\Windows\Fonts\Ubuntu-M.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Medium"
Source: "C:\Windows\Fonts\Ubuntu-MI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Medium Italic"
Source: "C:\Windows\Fonts\Ubuntu-R.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu"
Source: "C:\Windows\Fonts\Ubuntu-RI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Italic"
Source: "C:\Windows\Fonts\UbuntuMono-B.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Mono Bold"
Source: "C:\Windows\Fonts\UbuntuMono-BI.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Mono Bold Italic"
Source: "C:\Windows\Fonts\UbuntuMono-R.ttf"; DestDir: "{fonts}"; Flags: onlyifdoesntexist uninsneveruninstall; FontInstall: "Ubuntu Mono"
Source: "C:\Users\emils_000\Desktop\Raleway-Bold.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-ExtraBold.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-Heavy.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-Medium.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-SemiBold.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-ExtraLight.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-Light.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-Regular.otf"; DestDir: "{fonts}"
Source: "C:\Users\emils_000\Desktop\Raleway-Thin.otf"; DestDir: "{fonts}"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
