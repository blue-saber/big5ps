緣起

兩千零二年的四月，由於大學聯考分發工作的需要，我希望找到
一個在 Linux 上的列印工具。回想之前曾經拜讀過王佑中先生的
『 Linux 中文應用手冊』一書中作者提及的一個 ttfprint 程式
，透過 Internet 上的搜尋引擎，我很快的找到一支 ttfprint
的程式。但後來發現這支程式和王佑中先生所提的 ttfprint 並
不相同，不過那已經不是重點了，因為這支程式已經可以從 Linux
上印出漂亮的中文。

對我而言找到 ttfprint 這支程式並沒有完全解決我的問題，主要
的問題是：我必需能印出 Windows 的造字，關於這點 ttfprint
並沒有給我答案，我必需設法克服這點 ...

Windows 的造字檔名稱是 EUDC.TTE，這個 EUDC 是 Extended
User-Defined Characters 的縮寫。我看不太懂 ttfprint 的程式
碼, 但嘗試把 EUDC.TTE 給 ttfprint 讀的結果是：ttfprint 無
法支援 EUDC.TTE 的編碼方式。因為 EUDC.TTE 是採用 unicode 
編碼，而不是一般所熟悉的 Big5 編碼。看來，我得自己想辦法
了。

FreeType Library

事實上我並不瞭解 TrueType 的檔案結構，雖然它的標準是公開，
但對我而言，讀這些標準最後到應用是十分辛苦的。因為不瞭解
TrueType 的檔案結構，所以我幾乎無法瞭解 ttfprint 讀字形的
那段程式碼，況且希望讀的字型是 ttfprint 所沒有的，因此我
放棄了從 ttfprint 直接下手的方式。

長久以來，我就一直知道一個叫 FreeType Library。我曾利用它
配合 gd 來畫出漂亮的中文字。就這樣，我捨棄了 ttfprint 的
字型引擎而改用 FreeType 來幫我讀這些中文的控制點
