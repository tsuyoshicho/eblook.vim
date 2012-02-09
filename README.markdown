eblook.vim - EPWING/電子ブック辞書検索プラグインスクリプト
==========================================================

概要
====
  eblook.vimは、`eblook'プログラムを使って、
  EPWING/電子ブック辞書の検索を行うプラグインスクリプトです。

  VimでもEmacsのLookupのように辞書をひきたかったので作りました。

* Vim上でカーソル位置の単語を辞書引きできます。
* 複数の辞書を一度に検索できます。
* eblookプログラムのフロントエンドです。

![表示例](http://www1.interq.or.jp/~deton/eblook-vim/eblook-vim.png)

必要なもの
==========
*  Vim7以降
*  `eblook'プログラム
     http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook
*  EPWING/電子ブック辞書
     http://hp.vector.co.jp/authors/VA000022/unixdic/unix-dic1.html#c1s4

準備
====
  eblookプログラムをPATHの通った場所に置いて、
  実行できるようにしておいてください。

  アーカイブに含まれるファイルを次の場所に置いてください。

*   ファイル            置く場所              ファイルの説明
* plugin/eblook.vim     'runtimepath'/plugin  プラグインスクリプト本体
* syntax/eblook.vim     'runtimepath'/syntax  eblook.vim用syntaxファイル
* doc/eblook.txt        'runtimepath'/doc     スクリプトの説明書

  'runtimepath'で示されるディレクトリは、Vim上で
  :echo &runtimepath を実行することで確認できます。

使い方
======
  doc/eblook.txt を参照してください。

更新履歴
========
* 1.1.0 (2012-02-XXX)
  * 発音記号などの外字をUnicode文字列へ置換する機能を追加
    ([EBWin用の外字定義ファイル](http://www31.ocn.ne.jp/~h_ishida/EBPocket.html#download_gaiji)を使用)
  * その他の外字を_(下線)に置換するように変更
  * 'noequalalways'オプションが設定されている時に、狭いウィンドウ上で
    辞書を引こうとすると、見出し一覧や内容表示ウィンドウが開けずに
    エラー(E36: Not enough room)になる問題を修正。
  * entryウィンドウの高さを指定する'eblook_entrywin_height'オプションを追加
  * `<img>`,`<snd>`,`<mov>`の非表示化(conceal syntax)
  * Vim6対応を終了。要Vim7

* 1.0.5 (2012-01-19)
  * katonoさん作成のsyntaxファイルを取り込み
  * `<reference></reference=xxxx:xxx>`の非表示化
    (Vim 7.3で追加されたconceal syntaxを使用)

* 1.0.4 (2011-04-25)
  * Visual modeで選択された文字列を検索するためのmapを追加
    (katonoさんのmapをもとに作成)
  * Vimのregisterを汚さないように修整

* 1.0.3 (2009-04-07)
  * vim7で、単語が見つからない辞書がある場合に、entryバッファでのtitleの
    挿入が二重になってしまい、内容が正しく表示されない問題を修正
  * set expandtabしている場合に、`<reference>`先の内容表示ができない問題を修正

* 1.0.2 (2004-06-26)
  * 'eblook_dict{n}_name'が同じ辞書が複数ある場合に、
    内容が正しく表示されないバグを修正
  * オプションを2つ追加。
    * 'eblookprg': eblookプログラムの名前
    * 'eblookenc': eblookプログラムの出力を読み込むときのエンコーディング

* 1.0.1 (2003-12-06)
  * スペースを含む単語(de facto等)の検索ができなかったバグを修正。

* 1.0 (2003-06-15)
    最初のリリース。