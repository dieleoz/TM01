Get-ChildItem -Path "docs" -Filter "*.html" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $content | Set-Content $_.FullName -Encoding utf8
    python -c "print(f'Fixed encoding for {sys.argv[1]}')" $_.Name
}
