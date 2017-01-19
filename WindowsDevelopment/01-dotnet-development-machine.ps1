#Initial windows configuration
Update-ExecutionPolicy Unrestricted
Enable-MicrosoftUpdate
#Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives-EnableShowFileExtensions

#Runtimes and frameworks
cinst DotNet4.0
cinst DotNet4.5

# Web servers
cinst IIS-WebServerRole -source windowsfeatures

# Web browsers
cinst GoogleChrome

# Browser plugins
cinst fiddler4

# Visual studio and plugins
cinst VisualStudio2015Professional -InstallArguments "WebTools SQL"
cinst resharper
cinst dotcover
cinst stylecop
#Install-ChocolateyVsixPackage "Web Essentials 2015" http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/24/WebEssentials2013.vsix

# VCS
cinst gitextensions
cinst kdiff3

# Install windows updates
Install-WindowsUpdate -AcceptEula
