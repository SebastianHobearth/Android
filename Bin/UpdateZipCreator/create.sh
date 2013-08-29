echo ""
echo "|------------------------------|"
echo "|     Update Zip Creator       |"
echo "|   by  Sebastian Höbarth      |"
echo "|------------------------------|"
echo ""
echo "creating update.zip from root directory"
cd root
zip ../update.zip -r *
cd ..
echo ""
echo "update.zip done"
echo "signing update.zip"
java -classpath testsign.jar testsign update.zip update_signed.zip
echo "update_signed.zip is ready"
echo ""
echo "|------------------------------|"
echo "|          FINISHED            |"
echo "|------------------------------|"
echo ""