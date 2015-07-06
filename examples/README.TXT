~chgcmd ~!@
~!@eofill 0
~!@rem mphdr sample.eps
~!@paper A4;	Paper Size is A4
~!@landscape=0;	0 -> Portrait, 1 -> LandScape
~!@rem tray 4;	Tray 4
~!@wrap 1
~!@fs 16
~!@fn /usr/lib/ttf/moe_sung.ttf;	字型一
~!@fn /usr/lib/ttf/moe_kai.ttf
~!@fn /usr/lib/ttf/avmfv.ttf
~!@fn /usr/lib/ttf/ttro.ttf
~!@fn /usr/lib/ttf/dftt-h6.ttf
~!@rem fn /usr/lib/ttf/dfft-s5.ttf
~!@fn /usr/lib/ttf/avpop.ttf
~!@fn /usr/lib/ttf/kaiu.ttf;
~!@fn /usr/lib/ttf/mingliu.ttc;
~!@fn /usr/lib/ttf/simsun.ttf;
~!@fn /usr/lib/ttf/bkai00mp.ttf
~!@fn /usr/lib/ttf/bsmi00lp.ttf
~!@lineheadcmd 1
~!@usefn 1
big5ps

~!@usefn 4
關於本程式
~!@inlinecmd 1
字形:~!@usefn 10;單碼中文外框字bkai00mp~!@usefn 11;另一個單碼中文外框字bsmi00lp
~!@inlinecmd 0
~!@usefn 5
	本程式事實上是由 ttfprint 改寫而成的, ０１２３
~!@usefn 7
測一下標楷體, 標楷體是 Uni-Code 的字形
~!@usefn 8
測一下細明體, 細明體是 Uni-Code 的字形
~!@usefn 9
測一下 simsun ... 簡體字
~!@usefn 4
~!@setfont Times-Bold
big5 to PostScript with EUDC (Extended User-Defined Characters)
~!@setfont;
~!@usefn 1
現在應該是 moe_sung 的字體
123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
~!@usefn 2
~!@setrgb 0xffff00
改成 moe_kai 看看有什麼不同
~!@usefn 3
~!@setrgb 0xff00ff
再試一下全真的中仿宋 ... 嘿!!
~!@usefn 4
~!@setrgb 0x00ffff
金梅的浪漫體
~!@usefn 5
~!@setrgb 0x999900
華康的少女字 ... 這字有些怪
~!@usefn 6
~!@setrgb 0x000000
全真的海報體
~!@inlinecmd 1
~!@usefn 1
這~!@usefn 2;次~!@usefn 3;要~!@usefn 4;玩~!@usefn 5;同~!@usefn 6;行~!@usefn 5;的~!@usefn 4;變~!@usefn 3;化
~!@rgb-save
~!@setrgb 0xff0000
紅~!@setrgb 0x00ff00;綠~!@setrgb 0x0000ff;藍~!@setrgb 0xff0000;red ~!@setrgb 0x00ff00;green ~!@setrgb 0x0000ff;blue ~!@rgb-restore;black

~!@inlinecmd 0
~!@setrgb 0xff0000

1	2	這裡是測一下 TAB 對不對
11	2
~!@rgb-restore
~!@usefn 4
111	2	順便測一下造字: (�@) (�A)
~!@usefn 6
1111	2
11111	2
111111	2
1111111	2
	3
zzzzzzzzz	PostScript Language Reference Manual
()()()	5	中 英 Chinese-English
(((	6	還好有 GhostScript 及 GhostView
中
abc
~!@usefn 5
~!@setrgb 0x00ff00
~!@print 100,200,50,,10,,中文字ab123
~!@usefn 3
~!@setrgb 0x0000ff
~!@vprint 100,440,50,,10,,中文ab123哈
~!@rem print 110,230,,48,10,,中文ab123哈
~!@setrgb 0x500000
~!@usefn 5
~!@print 50,150,20,,,,當我在做這件工作時, 不禁回想當年不靠倚天中文而
~!@usefn 10
~!@print 50,120,20,,,,把中文字秀在螢幕上的情景 ...
~!@usefn 11
~!@print 50,90,20,,,,而如今, 能知道什麼是倚天中文的人, 可能不太多了 ...
~!@rgb-restore
~!@usefn 6
l
~!@setrgb 0x0000ff
~!@line 100,100,100,100,3
~!@setrgb 0x00ff00
~!@box 100,100,100,100,2
~!@rgb-restore
~!@rem list-all-fonts
~!@emit 500 100 moveto 100 500 lineto stroke
