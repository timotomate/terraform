terraform {
    backend "s3" { 
      bucket         = "timotomate-1031test-apne2-tfstate"
      key            = "timotomate/s3/terraform.tfstate"
      region         = "ap-northeast-2"  
      encrypt        = true
      dynamodb_table = "terraform-lock"
    }
}
