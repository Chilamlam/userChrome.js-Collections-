::2017.11.02

@echo off
::最小化运行批处理
::From: http://www.jb51.net/article/7347.htm
::if "%1"=="h" goto begin
::start mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin

::設置程序文件夾位置
set dir=D:\Program Files

::初始化Listary历史记录
del "%dir%\CingFox\Software\Listary Pro\UserData\DiskSearch.db"  /s /q
del "%dir%\CingFox\Software\Listary Pro\UserData\History_v2.sqlite"  /s /q
del "%dir%\CingFox\Software\Listary Pro\UserData\History_v2.sqlite-journal"  /s /q
del "%dir%\CingFox\Software\Listary Pro\UserData\listary_log.log"  /s /q

::Processlaso特殊处理
start "" "%dir%\System Tools\ProcessLassoPortable\ProcessGovernor.exe" "/configfolder=%dir%\System Tools\ProcessLassoPortable\config" "/logfolder=%dir%\System Tools\ProcessLassoPortable\config"
start "" "%dir%\System Tools\ProcessLassoPortable\ProcessLasso.exe" "/configfolder=%dir%\System Tools\ProcessLassoPortable\config" "/logfolder=%dir%\System Tools\ProcessLassoPortable\config"

::普通啟動
start "" "%dir%\CingFox\Software\Listary Pro\listary.exe"
start "" "%dir%\Nutstore\Nutstore.exe" /min
start "" "%dir%\CingFox\Software\picpick\picpick.exe"
start "" "%dir%\Tencent\QQ\Bin\QQ.exe"
start "" "%dir%\CingFox\Software\GFW\SSR\ShadowsocksR-dotnet4.0.exe"
start "" "%dir%\CingFox\Software\Capslock\Capslock+.exe"
start "" "%dir%\CingFox\Software\Ditto\Ditto.exe"  /min

::完成後退出
exit