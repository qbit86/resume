$inputBasename = "resume-viktor-tselov"
$inputFilename = "$PSScriptRoot\$inputBasename.html"
$outputDir = "$PSScriptRoot\out"
mkdir -Force $outputDir | Out-Null
$headHeight = git rev-list --count HEAD
$outputPdf = "$outputDir\$inputBasename-gamedev-$headHeight.pdf"
& "$env:ProgramFiles\Google\Chrome\Application\chrome.exe" --headless --run-all-compositor-stages-before-draw --no-pdf-header-footer --print-to-pdf=$outputPdf $inputFilename
