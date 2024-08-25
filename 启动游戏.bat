chcp 65001
FOR /F "tokens=2 delims==" %%I IN ('wmic desktopmonitor get screenheight /value') DO SET /A screenHeight=%%I
FOR /F "tokens=2 delims==" %%J IN ('wmic desktopmonitor get screenwidth /value') DO SET /A screenWidth=%%J
echo 分辨率为 %screenWidth%x%screenHeight%
.\patch\setres\SetRes.exe h800 v600
.\patch\HideTaskBar\bin\Release\net8.0\win-x64\publish\HideTaskBar.exe
shanghai.exe -windows
.\patch\ShowTaskBar\bin\Release\net8.0\win-x64\publish\ShowTaskBar.exe
.\patch\setres\SetRes.exe h%screenWidth% v%screenHeight%