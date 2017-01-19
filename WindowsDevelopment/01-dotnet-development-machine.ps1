#Initial windows configuration
Update-ExecutionPolicy Unrestricted
Set-ExplorerOptions -showFileExtensions

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
cinst VisualStudio2015Professional
cinst resharper
cinst dotcover
#cinst stylecop --allow-empty-checksums
cinst webessentials2015 --allow-empty-checksums

# Jetbrains intelliJ
cinst intellijidea-ultimate

# VCS
cinst gitextensions --allow-empty-checksums
cinst kdiff3
