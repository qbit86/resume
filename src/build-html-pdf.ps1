$headHeight = git rev-list --count HEAD
$inputFilename = "$PSScriptRoot\resume-viktor-tselov.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null

$outputHtml = "$outputDir\resume-viktor-tselov-$headHeight.html"
pandoc -d "$PSScriptRoot\defaults\html5.yaml" --output=$outputHtml $inputFilename

$inputRelative = Resolve-Path -Relative $inputFilename
$outputPdf = "$outputDir\resume-viktor-tselov-$headHeight.pdf"
pagedjs-cli -i $inputRelative -o $outputPdf
