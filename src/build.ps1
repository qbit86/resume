$headHeight = git rev-list --count HEAD
$outputFilename = "out/resume-viktor-tselov-${headHeight}.pdf"
md -Force out/ | Out-Null
pandoc -d defaults/base.yaml -d defaults/html.yaml
pandoc -d defaults/base.yaml -d defaults/pdf.yaml
pagedjs-cli -i out/__resume-viktor-tselov.html -o $outputFilename
