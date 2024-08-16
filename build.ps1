# required pandoc
# https://pandoc.org/installing.html
$sourceFile = "README.md"
$outputFileDocx = "build/bruce-van-horn-2-resume.docx"
$outputFileTxt = "build/bruce-van-horn-2-resume.txt"
$outputFileOdt = "build/bruce-van-horn-2-resume.odt"
$outputFilePdf = "build/bruce-van-horn-2-resume.pdf"

# Ensure build directory exists
if (-not (Test-Path -Path "build")) {
    New-Item -ItemType Directory -Path "build"
}

# Convert README.md to docx
pandoc $sourceFile -o $outputFileDocx

# Convert README.md to txt
pandoc $sourceFile -o $outputFileTxt

# Convert README.md to odt
pandoc $sourceFile -o $outputFileOdt

# Convert README.md to pdf
pandoc $sourceFile -o $outputFilePdf