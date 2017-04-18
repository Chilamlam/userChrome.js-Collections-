## myNewTab-Classic
by **Defpt & ywzhaiqi**<br/>

[NewTabOverride.uc.js](https://github.com/GH-Kelo/userChromeJS/blob/master/NewTabOverride/NewTabOverride.uc.js): 类似于 New Tab Override 扩展，用脚本实现 by Kelo

此版爲原始版，功能較單一，當然也有它的好處：
- 保存下來的圖片是原文件名
- 文件體積小
- 個人調整：加入日曆
- **媽媽再也不用擔心我被升級了**

原來Favicon可以用在線形式，用了快一年才知道。。。<br/>
[**原作者發佈地址**](http://bbs.kafan.cn/thread-1759418-1-1.html)

    可选Bing图下载地址：
    http://s.cn.bing.net
    http://cn.bing.com
    http://global.bing.com

### 使用方法：
第1步、解压后，把myNewTab整个文件夹复制到content文件夹下面，如图：<br/> 
<img width="650" src="img/position.jpg">

第2步、修改这两条参数：

    user_pref("browser.startup.homepage", "chrome://userchromejs/content/myNewTab/index.html");//首页
    user_pref("browser.newtab.url", "chrome://userchromejs/content/myNewTab/index.html");//本地Html

大功告成！效果图：<br/>
<img width="650" src="img/myNewTab-Classic.jpg">

切換圖片（經典版是點擊切換才下載圖片，所以會慢一點）：<br/>
<img width="650" src="img/change.gif">
