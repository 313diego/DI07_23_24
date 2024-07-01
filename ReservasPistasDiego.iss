; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ReservasPistas"
#define MyAppVersion "1.0"
#define MyAppPublisher "Diego Carrasco"
#define MyAppURL "https://www.reservaspistasdiego.com/"
#define MyAppExeName "Reservas_Padel_1_0.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A9873869-833D-4A1E-A721-51578E9250D7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\ReservasPistasDiego
DisableDirPage=yes
ChangesAssociations=yes
DisableProgramGroupPage=yes
LicenseFile=C:\Users\diego\Desktop\Reservas\dist\LICENSE.RTF
InfoBeforeFile=C:\Users\diego\Desktop\Reservas\dist\ANTESINSTALACION.RTF
InfoAfterFile=C:\Users\diego\Desktop\Reservas\dist\DESPUESINSTALACION.RTF
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\diego\Desktop\Reservas
OutputBaseFilename=ReservasPistasSetup
SetupIconFile=C:\Users\diego\Desktop\Reservas\dist\Logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
AllowCancelDuringInstall=no
DisableWelcomePage=no
WizardImageFile=C:\Users\diego\Desktop\Reservas\dist\welcomescreen.bmp
UninstallIconFile=C:\Users\diego\Desktop\Reservas\dist\papelera.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\diego\Desktop\Reservas\dist/{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\ANTESINSTALACION.RTF"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\DESPUESINSTALACION.RTF"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\LICENSE.RTF"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\Logo.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\papelera.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\README.TXT"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\ReservaPistasConBeans.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\Reservas_Padel_1_0.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\welcomescreen.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\diego\Desktop\Reservas\dist\lib\*"; DestDir: "{app}�_lib�_"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\diego\Desktop\Reservas\dist\help\*"; DestDir: "{app}�_help�_"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Messages]
WelcomeLabel2=�Bienvenido a Reservas Pistas Diego! Sofware para gestionar tus reservas de pistas de padel. �Estamos encantados de darte la bienvenida a nuestra aplicacion y agradecemos que hayas decididoar nuestro software! Puedes acceder a la documentacion de la aplicacion y a las actualizaciones en la p�gina https://www.reservaspistasdiego.com. Para cualquier duda estamos a su disposicion en el telefono +34 9240000111
