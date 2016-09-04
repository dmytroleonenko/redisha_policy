Notes:
- Netowrk partitioning is not resolved automatically. Meaning if there is no majority (3 nodes) then the cluster won't accept writes
- after provisioning node chef does not manage redis or sentinel configuration files because that would introduce a conflict between chef and sentinel
- Stack is made to run in us-east-1 region only
- Redis security group does not allow ssh access by default
- Policyfile.rb is used to provision nodes
- Cloudformation requires a base64 encoded validator.pem
- chef-dk is required to use policyfile

How to launch:
- use template file to launch from aws console or cli
- enter required variables
- wait about 15 minutes for stack to fully provision and cluster form

Chef-server setup:
chef update && chef push <group_name>
