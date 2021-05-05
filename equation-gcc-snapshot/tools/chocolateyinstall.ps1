
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.equation.com/ftpdir/gcc/gcc-11-20210425-32.exe'
$url64      = 'http://www.equation.com/ftpdir/gcc/gcc-11-20210425-64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'equation-gcc-snapshot*'
  silentArgs    = '/s'

  checksum     =  'f78e2dd2c142429170d3b257d9486ef4f66edf39556e5272bd345b8b18251af6'
  checksumType  = 'sha256'
  checksum64    = 'dc1b27efd3601c85f0cb25e441cd50ed7c1a83b8837588f16ef69277097f5427'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
