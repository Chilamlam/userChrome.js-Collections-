::2017.02.06

@echo off
::最小化运行批处理
::From: http://www.jb51.net/article/7347.htm
::if "%1"=="h" goto begin
::start mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin

::設置程序文件夾位置
set dir=D:\Program Files

::Processlaso特殊处理
start "" "%dir%\System Tools\ProcessLassoPortable\ProcessGovernor.exe" "/configfolder=%dir%\System Tools\ProcessLassoPortable" "/logfolder=%dir%\System Tools\ProcessLassoPortable"
start "" "%dir%\System Tools\ProcessLassoPortable\ProcessLasso.exe" "/configfolder=%dir%\System Tools\ProcessLassoPortable" "/logfolder=%dir%\System Tools\ProcessLassoPortable"

::普通啟動
start "" "%dir%\CingFox\Software\Listary Pro\listary.exe"
start "" "%dir%\BaiduYun\baiduyun.exe"
start "" "%dir%\CingFox\Software\ShareX\ShareX.exe"
start "" "%dir%\Tencent\QQ\Bin\QQ.exe"
start "" "%dir%\CingFox\Software\GFW\Shadowsocks\ShadowsocksR-dotnet4.0.exe"


::完成後退出
exit