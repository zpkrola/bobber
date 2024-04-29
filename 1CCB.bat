@echo off
echo Set-ExecutionPolicy RemoteSigned > KaimX.ps1
echo $caminhoRegistro = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" >> KaimX.ps1
echo $nomeValor = "ProductId" >> KaimX.ps1
echo $aleatorio = Get-Random -Minimum 0 -Maximum 5000 >> KaimX.ps1
echo $aleatorio2 = Get-Random -Minimum 0 -Maximum 8000 >> KaimX.ps1
echo $novoValor = "$aleatorio2-41Z79-03200-S6$aleatorio" >> KaimX.ps1
echo Set-ItemProperty -Path $caminhoRegistro -Name $nomeValor -Value $novoValor >> KaimX.ps1
echo Stop-Process -Name "WmiPrvSE" -Force >> KaimX.ps1
powershell -ExecutionPolicy Bypass -File KaimX.ps1
del C:\Users\KaimX.ps1
) > C:\Users\KaimX.ps1
del KaimX.ps1