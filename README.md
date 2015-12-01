project15
hoge.shを実行するとitc99の回路を自動でスキャン設計し、テストパターンを生成、さらにfillまで行い、各fillでの遷移数などを計算するスクリプトです。

実行前にフォルダを4つ、作っておく必要がある(空で良い)
フォルダ名は以下の通り

probability (遷移数計算に使うフォルダ)
file_output (デザインコンパイラのファイル出力先)
report (デザインコンパイラのレポート出力先)
tmax_output (tmaxのファイル出力先)


コマンド
コマンド実行場所はhoge.shの置いてあるディレクトリである必要がある
sh hoge.sh [rtlファイルパス] [chain数]　[クロックピリオド]
例
sh hoge.sh rtl/b04.vhd 2 10

srcフォルダ内にpythonのスクリプトを入れており、各ファイルの動作は下記の通り
x_fill.py・・・4種類のx_fillの実行
count.py・・・・fill後のファイルにおける遷移確率のカウント
enter.py・・・・fillしやすいようにファイルに改行を加えていく
name.py・・・・・common.tclの内容の書き換え、生成


