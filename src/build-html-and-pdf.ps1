$inputBasename = "resume-viktor-tselov"
$headHeight = git rev-list --count HEAD
$inputFilename = "$PSScriptRoot\$inputBasename.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null

$outputHtml = "$outputDir\$inputBasename-$headHeight.html"
pandoc -d "$PSScriptRoot\defaults\html5.yaml" --output=$outputHtml $inputFilename

$inputRelative = Resolve-Path -Relative $inputFilename
$outputPdf = "$outputDir\$inputBasename-$headHeight.pdf"
pagedjs-cli -i $inputRelative -o $outputPdf
