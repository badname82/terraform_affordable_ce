    At GCP:
    1) Create project
    2) Enable “Compute Engine API”
    3) Enable “Resource Settings API”
    4) Create a AIM & Admin → Service Account 
    5) Provide Role (owner) to Service Account 
    6) Go to Keys tab and “add key”→”create new key” json (download starts)
    7) Save file locally
    
    In the project folder:
    1) Edit dev.tfvars file to set the project-id and the full-path of the credentials file

    At the command line:
    1) terraform workspace new dev
    2) terraform init
    3) terraform plan -out=C:\terraform\projects\terraform_affordable_ce/plan
    4) terraform apply -var-"file=dev.tfvars"

    At GCP:
    1) Go to Virtual instances and check there are 3 instances running
    2) copy one of the instance's external ip
    3) Paste it in the browser to see if the Hello WOrld message is shown

    At the command line: 
    1) terraform destroy -var-"file=dev.tfvars"