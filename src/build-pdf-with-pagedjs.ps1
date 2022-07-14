$inputFilename = "$PSScriptRoot\resume-viktor-tselov.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$headHeight = git rev-list --count HEAD
$outputPdf = "$outputDir\resume-viktor-tselov-$headHeight.pdf"
$inputRelative = Resolve-Path -Relative $inputFilename
pagedjs-cli -i $inputRelative -o $outputPdf
