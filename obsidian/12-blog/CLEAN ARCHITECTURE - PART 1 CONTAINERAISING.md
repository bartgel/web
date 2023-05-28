# About this blogpost

In this chapter we will show you why virtualisation is a must have in IT and how to optimise it. 

I will eventually explain you how to do it and even provide you a short demo. So sit back, relax and enjoy this post!

## Welcome to the year 2000

We where all recovering from the fear of the Y2K bug and facing the introduction of the Euro in Europe. But this was not the main concern of the company I worked for.

We had this very old rustic server, running all kind of business critical applications. The people who installed it where long gone, we had no idea of where the source code was stored or how this application worked. It was making noises like someone was taken it's last breath and most of it's memory had died.

So if you write a very simple schema, you'll get something like this:

![[CA - P1 - Figure 1.svg]]

We starting introducing some principles like:
- We need installations scripts before installing
- We need the source code of installed applications

but still, if you move from one OS version to another, we all know, things break ...


| What | Option 1 | Option 2 |
| -- | -- |-- |
|Type of installations|==Installations described in word documents==|Installation is scripted and reprodusable |
|Type of scaling|==Vertically==|Horizontally|
|Definition of infrastructure|==At the end of the development fase==|During the development fase|
|Deprecation - new machines|==Difficult==|Easier|
|Projectmanagement|==Waterfall==|Agile|
|Resource Usage (on server)|Semi-optimal|==Optimal==|
|Resource Usage (in global)|==Semi-optimal==|Optimal|



## Typical development flow

Developer writes application and deploys to a development server.
He writes an installation and operational guide. In the best case some scripts
He hands this over to the ops team.
They install this on a QA environment.
Some manual interventions
After a while this goes to production.
When an upgrade needs to occur /new machine is installed the same procedure applies.


## Welcome to the year 2005

We start shifting things, and by the year 2005 we learned a lot from previous mistakes. Companies as VMware saw the light and invented Virtual machines that allowed you to easily back-up your servers and move entire applications form one server to another in merely seconds.

This was a game changer. You where no able to copy entire virtual servers from one place to another:


![[CA - P1 - Figure 2.svg]]

After a while we discovered some weaknesses in this plan:

- upgrades are not that simple
- Installations start scripted, but you still keep things that are done manual
- Developers have other environments than production
- Scaling can give issues

## Typical development flow

Developer writes application and deploys to a development server.
He writes an installation and operational guide. In the best case some scripts
He hands this over to the ops team.
They install this on a QA environment.
Some manual interventions
After a while this goes to production.
When an upgrade needs to occur the same procedure applies.
A new machine is just a copy of the machine


Price in Deployment ops customer satisfaction


## Welcome to the year 2013

With the invention of docker, we could go one step further. We now had a way to completely define a machine and to do an installation "from scratch"

So  ideally we knew that what is defined on the computer of the developer is exactly the same as what goes to production

![[CA - P1 - Figure 3.svg]]

The problem is you only have a limited amount of space on a single server. It is also not that easy to move load between servers.

## Typical development flow


Developer writes application on his machine and tests on the same hardware
He deploys to a development server. 
He writes a small installation and operational guide (less then one page) and creates docker container
He hands this over to the ops team.
They install this on a QA environment.
No manual interventions. this is back to the development team
After a while you go to production
When an upgrade needs to occur the same procedure applies.
A new machine is just a copy of the machine


# 2016 k8s

With the invention of k8s all things went a little bit simpler.

it does not matter any more where to run your applications. You will focus on the resources you need and it is up to k8s to decide where to run it. You need to define whatever you need to run an application. Even more

![[CA - P1 - Figure 4.svg]]

**Pods**: A pod groups one or more containers and is a core building block of the K8s architecture. For example, K8s can automatically replace a pod when it goes down, add more CPU and memory to it when needed, or even replicate it to scale out. Pods are assigned IP addresses. A set of pods together form a scalable “workload” that a “controller” manages. These workloads connect to “services” that represent the entire set of pods. A service load balances web traffic across the pods even as some pods are scaled or destroyed. It’s worth noting that storage volumes are also attached to pods and exposed to containers within pods.

**Controller**: A controller is a control loop that assesses the difference between the desired state and the actual state of the K8s cluster and communicates with the API server to create, update, and delete the resources that it manages. The label selectors that are part of the controller define the set of pods controlled by the controller. K8s has multiple types of controllers: Replication Controller (replicates pods for scaling), DeamonSet Controller (ensures each node gets one copy of a designated pod), Job Controller (runs software at a specific time), CronJob Controller (schedules jobs that run periodically), StatefulSet Controller (controls [stateful](https://en.wikipedia.org/wiki/State_(computer_science)) applications), and Deployment Controller (controls stateless applications). 

**Node**: A node is a physical or virtual server on which pods can be scheduled. Every node has a container runtime, a kubelet pod, and a kube-proxy pod (more on those three items to come). Node groups (also known as autoscaling groups or node pool groups) can be scaled manually and automatically.

**Volumes**: K8s storage volumes provide persistent data storage available throughout the lifetime of the pod. Containers within a pod can share a storage volume. A node can also directly access a storage volume. 

**Services**: A Kubernetes service is a set of pods that work together.


## Typical development flow

Developer writes application on his machine and tests on the same hardware
He deploys to a development server. 
He writes a small installation and operational guide (less then one page) and document requirements in code
The ops team only worries about
They install this on a QA environment.
No manual interventions. this is back to the development team
After a while you go to production
When an upgrade needs to occur the same procedure applies.
A new machine is just a copy of the machine




https://www.opsramp.com/guides/why-kubernetes/kubernetes-architecture/