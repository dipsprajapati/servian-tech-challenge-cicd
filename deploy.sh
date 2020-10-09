docker build -t dipsprajapati/serviantechchallenge-app:latest -f ./TechChallengeAppResponse/TechChallengeApp/Dockerfile ./TechChallengeAppResponse/TechChallengeApp

docker push dipsprajapati/serviantechchallenge-app:latest

#docker push dipsprajapati/serviantechchallenge-app:$SHA

kubectl apply -f k8s
kubectl set image deployments/app-deployment app=dipsprajapati/serviantechchallenge-app:latest