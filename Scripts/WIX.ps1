echo "Install WIX exe"
$url = "https://github.com/wixtoolset/wix3/releases/download/wix3112rtm/wix311.exe"
$outpath = "$env:temp/myexe.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

Start-Process -Filepath $outpath
