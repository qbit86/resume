$inputFilename = "$PSScriptRoot\resume-viktor-tselov.html"
$inputRelative = Resolve-Path -Relative $inputFilename
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$headHeight = git rev-list --count HEAD
$outputFilename = "$outputDir\resume-viktor-tselov-$headHeight.pdf"
pagedjs-cli -i $inputRelative -o $outputFilename
