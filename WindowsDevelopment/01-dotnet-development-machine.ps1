#Initial windows configuration
Update-ExecutionPolicy Unrestricted
Enable-MicrosoftUpdate
#Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives-EnableShowFileExtensions

#Runtimes and frameworks
cinstm DotNet4.0
cinstm DotNet4.5

# Web servers
cinstm IIS-WebServerRole -source windowsfeatures

# Web browsers
cinstm GoogleChrome

# Browser plugins
cinstm fiddler4

# Visual studio and plugins
cinstm VisualStudio2015Professional -InstallArguments "WebTools SQL"
cinstm resharper
cinstm dotcover
cinstm stylecop
#Install-ChocolateyVsixPackage "Web Essentials 2015" http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/24/WebEssentials2013.vsix

# VCS
cinstm gitextensions
cinstm kdiff3

# Install windows updates
Install-WindowsUpdate -AcceptEula
