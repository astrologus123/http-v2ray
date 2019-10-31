echo Setting up V2ray on $1 using UUID $2...
cp ./data/nginx/app.original ./data/nginx/app.conf
cp ./data/v2ray/config.original ./data/v2ray/config.json
sed -i s/abc123xyz/$1/g ./data/nginx/app.conf
sed -i s/abc123xyz/$2/g ./data/v2ray/config.json
cp ./localjson.original ./v2raylocal.json
sed -i s/abc123xyz/$1/g ./v2raylocal.json
sed -i s/abcuuidxyz/$2/g ./v2raylocal.json
echo $2>uuid
echo "If everything is done correctly, proceed with \"docker-compose up -d\"."
echo "The uuid used is recorded in the file uuid, and a local json file is stored in v2raylocal.json."
