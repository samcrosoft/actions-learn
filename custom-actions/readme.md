### To Run The Custom Action, You Can Do


```shell
$  act push -W .github/workflows/custom-action.yml
...
[Custom Action/Hello world action]   ✅  Success - Main actions/checkout@v1
[Custom Action/Hello world action] ⭐ Run Main my-step
[Custom Action/Hello world action]   🐳  docker build -t act-custom-actions-dockeraction:latest /private/var/www/html/learn/github-actions/actions-learn/custom-actions/
[Custom Action/Hello world action]   🐳  docker pull image=act-custom-actions-dockeraction:latest platform= username= forcePull=false
[Custom Action/Hello world action]   🐳  docker create image=act-custom-actions-dockeraction:latest platform= entrypoint=[] cmd=[]
[Custom Action/Hello world action]   🐳  docker run image=act-custom-actions-dockeraction:latest platform= entrypoint=[] cmd=[]
| Hello world my name is Hello Samcrosoft!
[Custom Action/Hello world action]   ✅  Success - Main my-step
[Custom Action/Hello world action] 🏁  Job succeeded


$ docker images | grep act

act-custom-actions-dockeraction                         latest                  91d69569a50b   3 minutes ago   50.6MB

# To execute the action from docker, do the following

$ docker run --rm -e INPUT_MY_NAME=samcrosoft -it act-custom-actions-dockeraction

Hello world my name is samcrosoft

```