$headHeight = git rev-list --count HEAD
$inputFilename = "$PSScriptRoot\resume-viktor-tselov.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$outputFilename = "$outputDir\resume-viktor-tselov-$headHeight.pdf"
pagedjs-cli -i $inputFilename -o $outputFilename
