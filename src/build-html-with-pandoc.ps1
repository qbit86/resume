$inputFilename = "$PSScriptRoot\resume-viktor-tselov.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$headHeight = git rev-list --count HEAD
$outputHtml = "$outputDir\resume-viktor-tselov-$headHeight.html"
pandoc -d "$PSScriptRoot\defaults\html5.yaml" --output=$outputHtml $inputFilename
