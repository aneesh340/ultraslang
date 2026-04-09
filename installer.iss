[Setup]
AppName=USLang
AppVersion=1.0
DefaultDirName={pf}\USLang
DefaultGroupName=USLang
OutputDir=.
OutputBaseFilename=USLangInstaller
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
Source: "target\x86_64-pc-windows-gnu\release\us.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "examples\*"; DestDir: "{app}\examples"; Flags: ignoreversion recursesubdirs
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "GUIDE.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "LANGUAGE_SPEC.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "QUICK_REFERENCE.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "BUILD.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "PROJECT_SUMMARY.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "INDEX.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "BUILD_SUCCESS.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "grammar.dot.pxt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\USLang Interpreter"; Filename: "{app}\us.exe"; IconFilename: "{app}\us.exe"
Name: "{group}\USLang Documentation"; Filename: "{app}\README.md"
Name: "{group}\Uninstall USLang"; Filename: "{uninstallexe}"
Name: "{commondesktop}\USLang Interpreter"; Filename: "{app}\us.exe"; Tasks: desktopicon; IconFilename: "{app}\us.exe"

[Run]
Filename: "{app}\us.exe"; Description: "Launch USLang Interpreter"; Flags: postinstall nowait skipifsilent