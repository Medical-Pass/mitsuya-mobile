#echo -n "Press directory name: "
#read str

for i in home
do

cd  /Users/ookubotakumi/AndroidStudioProjects/base_app/lib/pages

mkdir -p $i
cd $i

touch ${i}_add_edit_page.dart
touch ${i}_ichiran_page.dart
touch ${i}_detail_page.dart

touch ${i}_add_edit_view_model.dart
touch ${i}_ichiran_view_model.dart
touch ${i}_detail_view_model.dart

done

