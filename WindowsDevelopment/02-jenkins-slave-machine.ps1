#Initial windows configuration
Update-ExecutionPolicy Unrestricted
Enable-MicrosoftUpdate
#Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives-EnableShowFileExtensions

#Runtimes and frameworks
cinstm DotNet4.0
cinstm DotNet4.5

#Visual studio and plugins
cinstm VisualStudio2015Professional
cinstm stylecop
Install-ChocolateyVsixPackage "Web Essentials 2015" https://visualstudiogallery.msdn.microsoft.com/ee6e6d8c-c837-41fb-886a-6b50ae2d06a2/file/146119/32/Web%20Essentials%202015%20v0.5.197.vsix

#VCS
cinstm gitextensions
cinstm kdiff3

#optional packages 
cinstm java.jdk
cinstm wixtoolset
if (Test-PendingReboot) { Invoke-Reboot }

#Install windows updates
Install-WindowsUpdate -AcceptEula
