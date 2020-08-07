# Creating an AWS EC2 Instance with Terraform

This is a basic terraform project to create an AWS EC2 instance in eight (8) easy steps.

Here's a summary of the steps:

**Step 1.** Setup an AWS account (if you haven't already done so), and store your access key ID and secret access key

**Step 2.** Install terraform (if you haven't already done so)

**Step 3.** Create a file called instance.tf with the following code:
```
provider "aws" {
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
    region     = "us-east-1"
}

resource "aws_instance" "example" {
    ami           = "ami-13be557e"
    instance_type = "t2.micro"
}
```

**Step 4. `terraform init`:** To download and initialize the required provider plugins, execute the `terraform init` command in the same directory where you created the instance.tf file.

**Step 5. `terraform plan`:** Execute the `terraform plan` command to see what terraform will do before you apply it.

**Step 6. `terraform apply`:** Execute the `terraform apply` command to create the instance.

**Step 7.** Go to the EC2 section on the AWS console to verify that the instance was created successfully.

**Step 8. `terraform destroy`:** Execute the `terraform destroy` command to delete all the terraform resources that you created.

Done!

Full instructions can be found here : https://medium.com/slalom-technology/creating-your-first-terraform-infrastructure-on-aws-ad986f952951
