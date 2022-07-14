$headHeight = git rev-list --count HEAD
$inputFilename = "$PSScriptRoot\resume-viktor-tselov.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$outputFilename = "$outputDir\resume-viktor-tselov-$headHeight.pdf"
& "$env:ProgramFiles\Google\Chrome\Application\chrome.exe" --headless --run-all-compositor-stages-before-draw --print-to-pdf-no-header --print-to-pdf=$outputFilename $inputFilename
