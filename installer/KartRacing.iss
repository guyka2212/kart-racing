; Kart Racing - Windows installer (Inno Setup 6)
; Build:  ISCC.exe KartRacing.iss   ->  Output\KartRacingSetup.exe

#define AppName "Kart Racing"
#define AppVersion "1.0.2"
#define AppExe "Kart Racing.exe"
#define BuildDir "..\karting sim\Builds\KartRacing"

[Setup]
AppId={{53771A70-2CF6-459C-BB48-BE426A299B32}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName} {#AppVersion}
AppPublisher=Kart Racing
AppPublisherURL=https://guyka2212.github.io/kart-racing/
AppSupportURL=https://github.com/guyka2212/kart-racing/issues
DefaultDirName={autopf}\{#AppName}
DefaultGroupName={#AppName}
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputDir=Output
OutputBaseFilename=KartRacingSetup
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
SetupIconFile=..\logo\logo.ico
WizardSmallImageFile=..\logo\logo-mark-64.png
UninstallDisplayIcon={app}\{#AppExe}
UninstallDisplayName={#AppName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "{#BuildDir}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*_DoNotShip,*_ButDontShipItWithYourGame"

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExe}"
Name: "{group}\Uninstall {#AppName}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\{#AppExe}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExe}"; Description: "{cm:LaunchProgram,{#AppName}}"; Flags: nowait postinstall skipifsilent
