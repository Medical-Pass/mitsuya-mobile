#echo -n "Press directory name: "
#read str

for i in talk search
do

cd  /Users/ookubotakumi/AndroidStudioProjects/mitsuya-mobile/lib/pages

mkdir -p $i
cd $i

touch ${i}_page.dart

touch ${i}_view_model.dart

done

