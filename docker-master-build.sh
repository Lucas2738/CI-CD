if [ -z "$1" ]
then
	docker stack deploy --compose-file docker-compose.yml CICD_STACK
    exit
else
    IMAGE=$1
fi


docker service rm CICD_STACK $IMAGE

docker rmi $IMAGE
cd $IMAGE && docker build -t $IMAGE .

echo ""
echo " -- Rebuild on NODE 1 ---> Complete"
echo ""

echo ""
echo " -- Deployng Docker Stack ..."
echo ""

docker stack deploy CICD_STACK --compose-file docker-compose.yml

echo ""
echo " -- Done"
