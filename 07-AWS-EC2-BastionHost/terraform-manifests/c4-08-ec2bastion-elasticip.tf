# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument
resource "aws_eip" "ec2ip" {
  depends_on = [ module.ec2_public, module.vpc ]
  type = list(string)
  instance = module.ec2_public.ip
  vpc      = true
  tags = local.common_tags  
}
