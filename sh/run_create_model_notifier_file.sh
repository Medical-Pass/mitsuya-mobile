#VALUE1=column gakkaiKenshu categoryBetsuData categoryBetsuDataAlarm license rirekisho nenkaihi businessCard

#for i in rireki_basic_info rireki_background rireki_license rireki_reward_and_punishment rireki_wish_incentive rireki_desired_entries_field rireki_duty_career_document rireki_performance_book rireki_performance_academic_paper rireki_performance_presentaion
for i in rireki_output_date

do

#echo -n "Press directory name: "
#read str
cd  /Users/ookubotakumi/AndroidStudioProjects/ipsa-counseling-app/base_app/lib/models

mkdir -p $i
cd $i

touch ${i}.dart


cd  /Users/ookubotakumi/AndroidStudioProjects/ipsa-counseling-app/base_app/lib/notifiers

mkdir -p $i
cd $i

touch ${i}_notifier.dart
touch ${i}_state.dart

done