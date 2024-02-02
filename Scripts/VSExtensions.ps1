echo "Install Visual Studio Extensions"

function Get-Batchfile ($file) {
  $cmd = "`"$file`" & set"
    cmd /c $cmd | Foreach-Object {
      $p, $v = $_.split('=')
        Set-Item -path env:$p -value $v
    }
}

function VsVars32()
{
    $BatchFile = join-path $env:VS120COMNTOOLS "vsvars32.bat"
    Get-Batchfile `"$BatchFile`"
}

function curlex($url, $filename) {
  $path = [io.path]::gettemppath() + "\" + $filename
  if( test-path $path ) { rm -force $path }
  (new-object net.webclient).DownloadFile($url, $path)

  return new-object io.fileinfo $path
}

function installsilently($url, $name) {
  echo "Installing $name"
  $extension = (curlex $url $name).FullName
  $result = Start-Process -FilePath "C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\VSIXInstaller.exe" -ArgumentList "/q $extension" -Wait -PassThru;
}


# INSTALL WIX TOOLSET

echo "Install WIX exe"
$url = "https://github.com/wixtoolset/wix3/releases/download/wix3112rtm/wix311.exe"
$outpath = "$env:temp/myexe.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

Start-Process -Filepath $outpath

# INSTALL WIX VS EXTENSION
installsilently https://wixtoolset.gallerycdn.vsassets.io/extensions/wixtoolset/wixtoolsetvisualstudio2022extension/1.0.0.18/1640535397051/Votive2022.vsix Voltive2022.vsix
