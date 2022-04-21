#manju@manju-Aspire-ES1-531:~/provider/modules/vpc_module$ cat var.tf 
variable "vpc_cidr" {
  type        = string
  default = "10.0.0.0/16"
}
