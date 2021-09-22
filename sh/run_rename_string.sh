#ファイル名を変更
find ./ -type f | sed 'p;s/questionnaire/rirekisho/' | xargs -n2 mv

#ファイルの中身の文字列を変更する
grep -l 'rirekisho' ./* | xargs gsed -i.bak -e 's/rirekisho/rirekisho/g'