#echo -n "Press directory name: "
#read str

for i in team mypage notification cowork
do

cd  /Users/ookubotakumi/AndroidStudioProjects/mitsuya-mobile/lib/pages

mkdir -p $i
cd $i

touch ${i}_add_edit_page.dart
touch ${i}_ichiran_page.dart
touch ${i}_detail_page.dart

touch ${i}_add_edit_view_model.dart
touch ${i}_ichiran_view_model.dart
touch ${i}_detail_view_model.dart

done

