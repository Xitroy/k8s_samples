# k8s_samples
Code samples for k8s experiments

1. Запустить миникуб
minikube start

2. Собрать контейнер, который будет виден локально для миникуба
https://stackoverflow.com/questions/42564058/how-to-use-local-docker-images-with-minikube - спасибо этим ребятам (ответ от jjinking)
docker build -t pyhttpserv .

3. Применить деплоймент
kubectl apply -f simplest-pyserv/mydeployment.yaml

4. Применить сервис
kubectl apply -f simplest-pyserv/myservice.yaml

5. Дернуть 
curl $(minikube ip):$NODE_PORT
Либо 
echo $(minikube ip):$NODE_PORT 
И посмотреть результат в браузере (можно поползать по файловой системе контейнера)

====

Альтернативный вариант установки - с помощью helm

3. helm install simplest-pyserv pyserv-http/