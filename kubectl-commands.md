# k8s kubectl commands: #

## get ##
      kubectl get pods   
      kubectl get pods -n #namespace   
      kubectl get nodes  
      kubectl get nodes -n #namespace  
      kubectl get svc  
      kubectl get deployment  
      kubectl get ns  
      kubectl get namespace  
      kubectl get replicaset  
      kubectl get rs  
      kubectl get ingress  
      kubectl get hpa           #HPA - Horizontal Pod Autoscaling

## apply ##  
      kubectl apply -f #fileName.yml  
      kubectl apply -f #fileName1.yml -f #fileName2.yml  
      kubectl apply -f .  

## delete ##  
      kubectl delete -f #fileName.yml  
      kubectl delete pod #podName  
      kubectl delete svc #serviceName  
      kubectl delete namespace #namespaceName  

## describe ##
      kubectl descibe pod #podName  
      kubectl describe pod #podName -n #namespace  
      kubectl describe svc #serviceName  
      kubectl describe node #nodeName  
      kubectl describe deployment #deploymentName  

## logs ##  
      kubectl logs -f #podName  

## access the pod ##
      kubectl exec -it #podName/podId -- /bin/bash

## labels ##
      kubectl labels pod #podname #key=value
      kubectl get pods --show-labels
      kubectl get pods -l #key=value   
      kubectl get pods -l #key!=value  
      kubectl delete pod -l #key=value  
      kubectl delete pod -l #key!=value  

      kubectl get pods -l '#key in (#value1, value2)'
      kubectl get pods -l '#key notin (#value1, value2)'
      kubectl get pods -l '#key1=value1, #key2=value2'

## deployment ##
      kubectl scale replicas=3 deployment #deploymentName
      kubectl rollout status deployment #deploymentName
      kubectl rollout undo deployment #deploymentName
      kubectl rollout history deployment #deploymentName

      kubectl edit deployment #deploymentName
      
      kubectl rollout history deployment/#deploymentName
      kubectl rollout history deployment #deploymentName --revision 2
      kubectl rollout undo deployment/#deploymentName --to-revision=1
      kubectl annotate deployments.apps #deploymentName kubernetes.io/change-cause="rolled back to revision 1"
      

      kubectl expose deployment #deploymentName --type NodePort
      kubectl set image deployment/#deploymentName nginx-ctr=nginx:1.11 --record

      kubectl scale deployment #deploymentName --replicas=8

## Deployment Auto Scaling HPA - Horizontal Pod Autoscaling ##
      kubectl autoscale deployment #deploymentName --min=3 --max=8 --cpu-percent=70
      kubectl get hpa

      

