$ErrorActionPreference = 'Stop';

$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://va7ddp.asuscomm.com/AICLOUD1064784113/DCDSetup1.3.1.exe'
$checksum     = 'ea65964cf8ce76564d7876468e93b1ca0af0414dab568bee44e3744a568b2263'
$checksumType = 'sha256'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'DYMO Connect*'
  fileType      = 'exe'
  silentArgs    = "/s /v`"/qn`" /v`"REBOOT=ReallySuppress`" /sms"
  validExitCodes= @(0,1641,3010)
  url            = $url
  checksum       = $checksum
  checksumType   = $checksumType
  destination   = $toolsDir
}

Install-ChocolateyPackage @packageArgs

