1 ### k8s kubectl commands: ### 

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

## labels ##
      kubectl labels pod #podname #key=value
      kubectl get pods --show-labels
      kubectl get pods -l #key=value   
      kubectl get pods -l #key!=value  
      kubectl delete pod -l #key=value  
      kubectl delete pod -l #key!=value  




