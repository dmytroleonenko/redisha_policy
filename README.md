Notes:
- Netowrk partitioning is not resolved automatically. Meaning if there is no majority (3 nodes) then the cluster won't accept writes
- sentinel failover delay of 30 minuts is configured to protect from fast failovers. It means that cluster will be able to failover not earlier than 30 minutes after startup
- after provisioning node chef does not manage redis or sentinel configuration files because that would introduce a conflict between chef and sentinel
- Stack is made to run in us-east-1 region only
- Redis security group does not allow ssh access by default
- Chef-server used in this task is a free hosted version allowing no more than 5 nodes managed. That means that the stack can't be launched many times

How to launch:
- use template file to launch from aws console or cli
- enter required variables
- wait about 15 minutes for stack to fully provision and cluster form
