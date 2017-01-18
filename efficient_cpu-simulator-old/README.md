#ビルド
`make`  
で2つの実行ファイル     
asm : アセンブラ      
sim : シミュレータ     
を生成  

#実行
`(./asm foo.s)`  (基本的に必要なし)  

`./sim  foo.s  (bar.sld)`  

*command一覧*  
`'run' or 'r'`          : 1番目のブレイクポイントまで最初からプログラム実行     
`'break' or 'b' [L]`    : 行Lにブレイクポイントを設定     
`'continue' or 'c'`     : 次のブレイクポイントまでプログラム実行       
`'info' or 'i'`         : ブレイクポイントに関する情報を表示     
`'enable' or 'e' [L]`   : 行Lのブレイクポイントを有効化      
`'disable' or 'd' [L]`  : 行Lのブレイクポイントを無効化     
`'step' or 's' [C]`     : 回数C分だけステップ実行(C省略は1ステップ)     
`'f'`                   : 各ラベルに飛んだ回数を検索付きで表示    
`'w'`                   : print_int, print_charによって"sim.ppm"に出力された内容を表示  
`'help' or 'h'`         : ヘルプ  
`'exit'`                : 終了    

例)  
`./sim test/minrt.s sld/contest.sld`  

・\*.sはtest以下
