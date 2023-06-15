
if [ -z "$ENV" ]
then
      echo "Environment not specified, exiting"
			exit 1;
fi

FUNCTION_NAME=$ENV-test-app-node-api

echo "Build lambda fuction $FUNCTION_NAME"

rm -R dist
npm run build

cd dist

zip -r lambda.zip .

aws lambda update-function-code --function-name $FUNCTION_NAME --zip-file fileb://lambda.zip


