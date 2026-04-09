# USLang Package Creator
$ErrorActionPreference = "Stop"

$projectDir = "c:\allpytonfiles\a\uslang"
$outputDir = "c:\allpytonfiles\a"
$zipName = "USLang-v1.0-Complete.zip"
$zipPath = Join-Path $outputDir $zipName
$tempDir = Join-Path $env:TEMP "uslang-pkg"

Write-Host "Creating USLang package..." -ForegroundColor Cyan
if (Test-Path $tempDir) { Remove-Item $tempDir -Recurse -Force }
New-Item -ItemType Directory -Path $tempDir -Force | Out-Null

$filesToCopy = @("target\x86_64-pc-windows-gnu\release\us.exe", "standalone-installer.bat", "README.md", "GUIDE.md", "LANGUAGE_SPEC.md", "QUICK_REFERENCE.md", "BUILD.md", "PROJECT_SUMMARY.md", "INDEX.md", "BUILD_SUCCESS.md", "grammar.dot.pxt", "us.ico")

foreach ($file in $filesToCopy) {
    $sourcePath = Join-Path $projectDir $file
    $fileName = Split-Path $file -Leaf
    if (Test-Path $sourcePath) {
        Copy-Item $sourcePath (Join-Path $tempDir $fileName) -Force | Out-Null
        Write-Host "  Copied: $fileName" -ForegroundColor Green
    }
}

$examplesSource = Join-Path $projectDir "examples"
if (Test-Path $examplesSource) {
    Copy-Item $examplesSource (Join-Path $tempDir "examples") -Recurse -Force | Out-Null
    Write-Host "  Copied: examples folder" -ForegroundColor Green
}

$startHere = "USLang v1.0`n`nINSTALLATION:`n1. Double-click standalone-installer.bat`n2. Follow the installer`n3. Restart PowerShell`n`nGET STARTED:`nus `"examples\hello.us`"`n"
Set-Content -Path (Join-Path $tempDir "START_HERE.txt") -Value $startHere -Encoding UTF8

Write-Host "Creating zip file..." -ForegroundColor Yellow
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($tempDir, $zipPath, [System.IO.Compression.CompressionLevel]::Optimal, $false)

Remove-Item $tempDir -Recurse -Force

$fileSize = (Get-Item $zipPath).Length / 1MB
Write-Host "`nPackage created!" -ForegroundColor Green
Write-Host "File: $zipPath" -ForegroundColor Cyan
Write-Host ("Size: {0:F2} MB" -f $fileSize) -ForegroundColor Cyan
