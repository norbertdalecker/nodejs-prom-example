VERS=$(cat package.json | jq .version -r)
docker build -t norbertdalecker/nodejs-prom-example:$VERS .
docker push norbertdalecker/nodejs-prom-example:$VERS
