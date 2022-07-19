$inputBasename = "resume-viktor-tselov"
$inputFilename = "$PSScriptRoot\$inputBasename.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$headHeight = git rev-list --count HEAD
$outputPdf = "$outputDir\$inputBasename-$headHeight.pdf"
& "$env:ProgramFiles\Google\Chrome\Application\chrome.exe" --headless --run-all-compositor-stages-before-draw --print-to-pdf-no-header --print-to-pdf=$outputPdf $inputFilename
