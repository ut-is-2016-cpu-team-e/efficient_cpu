#ビルド
`make`  
で2つの実行ファイル     
asm : \*.sをアセンブルして"bin.log"と"asm.log"を生成  
sim : ラベル付きバイナリ"bin.log"をシミュレート  
を生成  

#実行
`(./asm foo.s)`  (基本的に必要なし)  

`./sim [option]`  

*option一覧*  
`-asm foo.s : *.sのアセンブルからシミュレートまで行う`  
`-num N     : Nだけ命令処理`  
`-all       : hltまたはjoutまで命令処理`  
`-debug     : デバッグモード`  
   
`(debug command一覧)`  
`'run' or 'r'          : 1番目のブレイクポイントまで最初からプログラム実行`     
`'break' or 'b' [L]    : 行Lにブレイクポイントを設定`     
`'continue' or 'c'     : 次のブレイクポイントまでプログラム実行`       
`'info' or 'i'         : ブレイクポイントに関する情報を表示`     
`'enable' or 'e' [L]   : 行Lのブレイクポイントを有効化`      
`'disable' or 'd' [L]  : 行Lのブレイクポイントを無効化`     
`'step' or 's' [C]     : 回数C分だけステップ実行`     
`'g'                   : PC-10 ~ PC+10の命令一覧を表示`  
`'v'                   : 命令一覧を表示`  
`'f'                   : レジスタと命令カウンタの状況を表示`   
`'help' or 'h'         : ヘルプ`  
`'exit'                : 終了`    

例)  
`./sim -asm test/fib10.s -num 1000`  
`./sim -asm test/fib10.s -debug`  

\*.sはtest以下
