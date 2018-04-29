
env = "dev"
ec2_bastion_instance_type    = "t2.micro"
ec2_bastion_storage_type     = "gp2"
ec2_bastion_user            = "ubuntu"


region      = "ca-central-1"
key_path    = "~/.ssh/"
key_name	= "dev_key"
encrypt = "true"
state_bucket = "ca-central-1.aws-terraform-state-bucket"
bucket_key = "terraform/dev/tf.tfstate"
env = "dev"

