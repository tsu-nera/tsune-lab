﻿#!/usr/bin/perl
# Copyright (c) 1991-2011 Kawahara Lab., Kyoto University
# Copyright (c) 2000-2005 Shikano Lab., Nara Institute of Science and Technology
# Copyright (c) 2005-2011 Julius project team, Nagoya Institute of Technology
# All rights reserved
#
# Generated automatically from yomi2voca.pl.in by configure. 
#

# ひらがな -> Julius 標準モデル用変換スクリプト
# 第2フィールドのひらがなを変換する．
#
#   .yomi -> .dict
#
# 助詞の「は」「へ」「を」→「w a」「e」「o」は変換後に手動で直すこと．
#
# ver2: 小さい「ぁぃぅぇぉ」や「う゛」などに対応
#
#

$error = 0;
$lineno = 0;

while (<>) {

# 文法用に，"%" で始まる行はそのまま出力する．
    if (/^%/){
	print;
	next;
    }
    chomp;
# 表記とひらがな読みを分離
    @a = split;
    $_ = $a[1];
# ひらがな，長音以外はそのまま

# 3文字以上からなる変換規則（v a）
    s/う゛ぁ/ b a/g;
    s/う゛ぃ/ b i/g;
    s/う゛ぇ/ b e/g;
    s/う゛ぉ/ b o/g;
    s/う゛ゅ/ by u/g;

# 2文字からなる変換規則
    s/ぅ゛/ b u/g;

    s/あぁ/ a a/g;
    s/いぃ/ i i/g;
    s/いぇ/ i e/g;
    s/いゃ/ y a/g;
    s/うぅ/ u:/g;
    s/えぇ/ e e/g;
    s/おぉ/ o:/g;
    s/かぁ/ k a:/g;
    s/きぃ/ k i:/g;
    s/くぅ/ k u:/g;
    s/くゃ/ ky a/g;
    s/くゅ/ ky u/g;
    s/くょ/ ky o/g;
    s/けぇ/ k e:/g;
    s/こぉ/ k o:/g;
    s/がぁ/ g a:/g;
    s/ぎぃ/ g i:/g;
    s/ぐぅ/ g u:/g;
    s/ぐゃ/ gy a/g;
    s/ぐゅ/ gy u/g;
    s/ぐょ/ gy o/g;
    s/げぇ/ g e:/g;
    s/ごぉ/ g o:/g;
    s/さぁ/ s a:/g;
    s/しぃ/ sh i:/g;
    s/すぅ/ s u:/g;
    s/すゃ/ sh a/g;
    s/すゅ/ sh u/g;
    s/すょ/ sh o/g;
    s/せぇ/ s e:/g;
    s/そぉ/ s o:/g;
    s/ざぁ/ z a:/g;
    s/じぃ/ j i:/g;
    s/ずぅ/ z u:/g;
    s/ずゃ/ zy a/g;
    s/ずゅ/ zy u/g;
    s/ずょ/ zy o/g;
    s/ぜぇ/ z e:/g;
    s/ぞぉ/ z o:/g;
    s/たぁ/ t a:/g;
    s/ちぃ/ ch i:/g;
    s/つぁ/ ts a/g;
    s/つぃ/ ts i/g;
    s/つぅ/ ts u:/g;
    s/つゃ/ ch a/g;
    s/つゅ/ ch u/g;
    s/つょ/ ch o/g;
    s/つぇ/ ts e/g;
    s/つぉ/ ts o/g;
    s/てぇ/ t e:/g;
    s/とぉ/ t o:/g;
    s/だぁ/ d a:/g;
    s/ぢぃ/ j i:/g;
    s/づぅ/ d u:/g;
    s/づゃ/ zy a/g;
    s/づゅ/ zy u/g;
    s/づょ/ zy o/g;
    s/でぇ/ d e:/g;
    s/どぉ/ d o:/g;
    s/なぁ/ n a:/g;
    s/にぃ/ n i:/g;
    s/ぬぅ/ n u:/g;
    s/ぬゃ/ ny a/g;
    s/ぬゅ/ ny u/g;
    s/ぬょ/ ny o/g;
    s/ねぇ/ n e:/g;
    s/のぉ/ n o:/g;
    s/はぁ/ h a:/g;
    s/ひぃ/ h i:/g;
    s/ふぅ/ f u:/g;
    s/ふゃ/ hy a/g;
    s/ふゅ/ hy u/g;
    s/ふょ/ hy o/g;
    s/へぇ/ h e:/g;
    s/ほぉ/ h o:/g;
    s/ばぁ/ b a:/g;
    s/びぃ/ b i:/g;
    s/ぶぅ/ b u:/g;
    s/ふゃ/ hy a/g;
    s/ぶゅ/ by u/g;
    s/ふょ/ hy o/g;
    s/べぇ/ b e:/g;
    s/ぼぉ/ b o:/g;
    s/ぱぁ/ p a:/g;
    s/ぴぃ/ p i:/g;
    s/ぷぅ/ p u:/g;
    s/ぷゃ/ py a/g;
    s/ぷゅ/ py u/g;
    s/ぷょ/ py o/g;
    s/ぺぇ/ p e:/g;
    s/ぽぉ/ p o:/g;
    s/まぁ/ m a:/g;
    s/みぃ/ m i:/g;
    s/むぅ/ m u:/g;
    s/むゃ/ my a/g;
    s/むゅ/ my u/g;
    s/むょ/ my o/g;
    s/めぇ/ m e:/g;
    s/もぉ/ m o:/g;
    s/やぁ/ y a:/g;
    s/ゆぅ/ y u:/g;
    s/ゆゃ/ y a:/g;
    s/ゆゅ/ y u:/g;
    s/ゆょ/ y o:/g;
    s/よぉ/ y o:/g;
    s/らぁ/ r a:/g;
    s/りぃ/ r i:/g;
    s/るぅ/ r u:/g;
    s/るゃ/ ry a/g;
    s/るゅ/ ry u/g;
    s/るょ/ ry o/g;
    s/れぇ/ r e:/g;
    s/ろぉ/ r o:/g;
    s/わぁ/ w a:/g;
    s/をぉ/ o:/g;
    
    s/う゛/ b u/g;
    s/でぃ/ d i/g;
    s/でぇ/ d e:/g;
    s/でゃ/ dy a/g;
    s/でゅ/ dy u/g;
    s/でょ/ dy o/g;
    s/てぃ/ t i/g;
    s/てぇ/ t e:/g;
    s/てゃ/ ty a/g;
    s/てゅ/ ty u/g;
    s/てょ/ ty o/g;
    s/すぃ/ s i/g;
    s/ずぁ/ z u a/g;
    s/ずぃ/ z i/g;
    s/ずぅ/ z u/g;
    s/ずゃ/ zy a/g;
    s/ずゅ/ zy u/g;
    s/ずょ/ zy o/g;
    s/ずぇ/ z e/g;
    s/ずぉ/ z o/g;
    s/きゃ/ ky a/g;
    s/きゅ/ ky u/g;
    s/きょ/ ky o/g;
    s/しゃ/ sh a/g;
    s/しゅ/ sh u/g;
    s/しぇ/ sh e/g;
    s/しょ/ sh o/g;
    s/ちゃ/ ch a/g;
    s/ちゅ/ ch u/g;
    s/ちぇ/ ch e/g;
    s/ちょ/ ch o/g;
    s/とぅ/ t u/g;
    s/とゃ/ ty a/g;
    s/とゅ/ ty u/g;
    s/とょ/ ty o/g;
    s/どぁ/ d o a/g;
    s/どぅ/ d u/g;
    s/どゃ/ dy a/g;
    s/どゅ/ dy u/g;
    s/どょ/ dy o/g;
    s/どぉ/ d o:/g;
    s/にゃ/ ny a/g;
    s/にゅ/ ny u/g;
    s/にょ/ ny o/g;
    s/ひゃ/ hy a/g;
    s/ひゅ/ hy u/g;
    s/ひょ/ hy o/g;
    s/みゃ/ my a/g;
    s/みゅ/ my u/g;
    s/みょ/ my o/g;
    s/りゃ/ ry a/g;
    s/りゅ/ ry u/g;
    s/りょ/ ry o/g;
    s/ぎゃ/ gy a/g;
    s/ぎゅ/ gy u/g;
    s/ぎょ/ gy o/g;
    s/ぢぇ/ j e/g;
    s/ぢゃ/ j a/g;
    s/ぢゅ/ j u/g;
    s/ぢょ/ j o/g;
    s/じぇ/ j e/g;
    s/じゃ/ j a/g;
    s/じゅ/ j u/g;
    s/じょ/ j o/g;
    s/びゃ/ by a/g;
    s/びゅ/ by u/g;
    s/びょ/ by o/g;
    s/ぴゃ/ py a/g;
    s/ぴゅ/ py u/g;
    s/ぴょ/ py o/g;
    s/うぁ/ u a/g;
    s/うぃ/ w i/g;
    s/うぇ/ w e/g;
    s/うぉ/ w o/g;
    s/ふぁ/ f a/g;
    s/ふぃ/ f i/g;
    s/ふぅ/ f u/g;
    s/ふゃ/ hy a/g;
    s/ふゅ/ hy u/g;
    s/ふょ/ hy o/g;
    s/ふぇ/ f e/g;
    s/ふぉ/ f o/g;

# 1音からなる変換規則
    s/あ/ a/g;
    s/い/ i/g;
    s/う/ u/g;
    s/え/ e/g;
    s/お/ o/g;
    s/か/ k a/g;
    s/き/ k i/g;
    s/く/ k u/g;
    s/け/ k e/g;
    s/こ/ k o/g;
    s/さ/ s a/g;
    s/し/ sh i/g;
    s/す/ s u/g;
    s/せ/ s e/g;
    s/そ/ s o/g;
    s/た/ t a/g;
    s/ち/ ch i/g;
    s/つ/ ts u/g;
    s/て/ t e/g;
    s/と/ t o/g;
    s/な/ n a/g;
    s/に/ n i/g;
    s/ぬ/ n u/g;
    s/ね/ n e/g;
    s/の/ n o/g;
    s/は/ h a/g;
    s/ひ/ h i/g;
    s/ふ/ f u/g;
    s/へ/ h e/g;
    s/ほ/ h o/g;
    s/ま/ m a/g;
    s/み/ m i/g;
    s/む/ m u/g;
    s/め/ m e/g;
    s/も/ m o/g;
    s/ら/ r a/g;
    s/り/ r i/g;
    s/る/ r u/g;
    s/れ/ r e/g;
    s/ろ/ r o/g;
    s/が/ g a/g;
    s/ぎ/ g i/g;
    s/ぐ/ g u/g;
    s/げ/ g e/g;
    s/ご/ g o/g;
    s/ざ/ z a/g;
    s/じ/ j i/g;
    s/ず/ z u/g;
    s/ぜ/ z e/g;
    s/ぞ/ z o/g;
    s/だ/ d a/g;
    s/ぢ/ j i/g;
    s/づ/ z u/g;
    s/で/ d e/g;
    s/ど/ d o/g;
    s/ば/ b a/g;
    s/び/ b i/g;
    s/ぶ/ b u/g;
    s/べ/ b e/g;
    s/ぼ/ b o/g;
    s/ぱ/ p a/g;
    s/ぴ/ p i/g;
    s/ぷ/ p u/g;
    s/ぺ/ p e/g;
    s/ぽ/ p o/g;
    s/や/ y a/g;
    s/ゆ/ y u/g;
    s/よ/ y o/g;
    s/わ/ w a/g;
    s/ゐ/ i/g;
    s/ゑ/ e/g;
    s/ん/ N/g;
    s/っ/ q/g;
    s/ー/:/g;

# ここまでに処理されてない ぁぃぅぇぉ はそのまま大文字扱い
    s/ぁ/ a/g;
    s/ぃ/ i/g;
    s/ぅ/ u/g;
    s/ぇ/ e/g;
    s/ぉ/ o/g;
    s/ゎ/ w a/g;
    s/ぉ/ o/g;

# その他特別なルール
    s/を/ o/g;

# 最初の空白を削る
    s/^ ([a-z])/$1/g;

# 変換の結果長音記号が続くことがまれにあるので一つにまとめる
    s/:+/:/g;

# アルファベット列になっていない場合，変換に失敗しているので
# 標準エラー出力に出力する．

    $lineno++;
    if (! /^[ a-zA-Z:]+$/) {
	if ($error == 0) {
	    $error = 1;
	    print STDERR "Error: (they were also printed to stdout)\n";
	}
	print STDERR "line " , $lineno , ": " , @a[0], "\t", $_,"\n";
    }

    print @a[0], "\t", $_,"\n";

}
