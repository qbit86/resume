$inputBasename = "resume-viktor-tselov"
$inputFilename = "$PSScriptRoot\$inputBasename.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$headHeight = git rev-list --count HEAD
$outputPdf = "$outputDir\$inputBasename-$headHeight.pdf"
$inputRelative = Resolve-Path -Relative $inputFilename
pagedjs-cli -i $inputRelative -o $outputPdf
