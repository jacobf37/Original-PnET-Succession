; LANDIS-II Extension information
#define CoreRelease "LANDIS-II-V8"
#define ExtensionName "PnET-Succession"
#define AppVersion "{VERSION}"
#define AppPublisher "LANDIS-II Foundation"
#define AppURL "http://www.landis-ii.org/"

#define BuildDir "..\..\src\bin\Release"

[Setup]
AppId={{00061EE9-D461-4B71-A2AC-8E5D15F28D6A}
AppName={#CoreRelease} {#ExtensionName}
AppVersion={#AppVersion}
AppVerName={#CoreRelease} {#ExtensionName} v{#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
OutputDir={#SourcePath}
OutputBaseFilename={#CoreRelease} {#ExtensionName} {#AppVersion}-setup
Compression=lzma
SolidCompression=yes

[Files]
Source: {#BuildDir}\Landis.Extension.Succession.BiomassPnET-v6.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: ignoreversion

Source: {#BuildDir}\Landis.Library.UniversalCohorts-v2.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: uninsneveruninstall ignoreversion
Source: {#BuildDir}\Landis.Library.Climate-v6.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: uninsneveruninstall ignoreversion
Source: {#BuildDir}\Landis.Library.InitialCommunity.Universal-v2.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: uninsneveruninstall ignoreversion
Source: {#BuildDir}\Landis.Library.Metadata-v2.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: uninsneveruninstall ignoreversion
Source: {#BuildDir}\Landis.Library.Parameters-v2.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: uninsneveruninstall ignoreversion
Source: {#BuildDir}\Landis.Library.PnETCohorts-v2.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: uninsneveruninstall ignoreversion
Source: {#BuildDir}\Landis.Library.Succession-v10.dll; DestDir: "C:\Program Files\LANDIS-II-v8\extensions"; Flags: uninsneveruninstall ignoreversion

Source: ..\Defaults\PnETGenericDefaultParameters.txt; DestDir: "C:\Program Files\LANDIS-II-v8\extensions\Defaults"; Flags: ignoreversion
Source: ..\Defaults\VanGenuchtenParameters.txt; DestDir: "C:\Program Files\LANDIS-II-v8\extensions\Defaults"; Flags: ignoreversion
Source: ..\Defaults\SaxtonAndRawlsParameters.txt; DestDir: "C:\Program Files\LANDIS-II-v8\extensions\Defaults"; Flags: ignoreversion

#define InfoTxt "PnET-Succession.txt"
Source: {#InfoTxt}; DestDir: "C:\Program Files\LANDIS-II-v8\plug-ins-installer-files"

[Run]
Filename: "C:\Program Files\LANDIS-II-v8\commands\landis-ii-extensions.cmd"; Parameters: "remove \"PnET-Succession\""; WorkingDir: "C:\Program Files\LANDIS-II-v8\plug-ins-installer-files"
Filename: "C:\Program Files\LANDIS-II-v8\commands\landis-ii-extensions.cmd"; Parameters: "add \"{#InfoTxt}\""; WorkingDir: "C:\Program Files\LANDIS-II-v8\plug-ins-installer-files"

[UninstallRun]
Filename: "C:\Program Files\LANDIS-II-v8\commands\landis-ii-extensions.cmd"; Parameters: "remove \"PnET-Succession\""; WorkingDir: "C:\Program Files\LANDIS-II-v8\plug-ins-installer-files"
