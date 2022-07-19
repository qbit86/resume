$inputBasename = "resume-viktor-tselov"
$inputFilename = "$PSScriptRoot\$inputBasename.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$headHeight = git rev-list --count HEAD
$outputHtml = "$outputDir\$inputBasename-$headHeight.html"
pandoc -d "$PSScriptRoot\defaults\html5.yaml" --output=$outputHtml $inputFilename
