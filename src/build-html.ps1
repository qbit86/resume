md -Force out/ | Out-Null
pandoc -d defaults/base.yaml -d defaults/html.yaml
