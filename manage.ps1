$OutputDir = "out"
$SourceDir = "src"

switch ($args[0]) {
    "build" {
        Write-Host "--- Compilando o projeto ---" -ForegroundColor Cyan
        if (!(Test-Path $OutputDir)) { New-Item -ItemType Directory -Path $OutputDir | Out-Null }

        javac -d $OutputDir "$SourceDir/Main.java" "$SourceDir/Controllers/*.java" "$SourceDir/Devices/*.java"

        if ($LASTEXITCODE -eq 0) { Write-Host "Build concluído com sucesso!" -ForegroundColor Green }
    }

    "run" {
        if (Test-Path $OutputDir) {
            Write-Host "--- Executando Aplicação ---`n" -ForegroundColor Green
            java -cp $OutputDir Main
        } else {
            Write-Host "Erro: Pasta '$OutputDir' não encontrada. Execute: .\manage.ps1 build" -ForegroundColor Red
        }
    }

    "clean" {
        if (Test-Path $OutputDir) {
            Remove-Item -Recurse -Force $OutputDir
            Write-Host "Pasta $OutputDir removida." -ForegroundColor Yellow
        }
    }

    Default {
        Write-Host "Uso: .\manage.ps1 {build | run | clean}" -ForegroundColor White
    }
}
