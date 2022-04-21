###manju@manju-Aspire-ES1-531:~/provider$ cat main.tf      
module "us" {
    source ="./modules/vpc_module"       #in the current directory create create "modules/vpc_modules"   directory 
    providers = {
     aws = aws.us
    }
    vpc_cidr = "10.0.0.0/16"
}

module "ap" {
    source ="./modules/vpc_module"
    providers = {
     aws = aws.ap
    }
    vpc_cidr = "10.0.0.0/16"
}
