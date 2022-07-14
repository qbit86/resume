$headHeight = git rev-list --count HEAD
$inputFilename = "$PSScriptRoot\resume-viktor-tselov.html"
$outputFilename = "$PSScriptRoot\out\resume-viktor-tselov-$headHeight.pdf"
mkdir -Force out | Out-Null
& "$env:ProgramFiles\Google\Chrome\Application\chrome.exe" --headless --run-all-compositor-stages-before-draw --print-to-pdf-no-header --print-to-pdf=$outputFilename $inputFilename
