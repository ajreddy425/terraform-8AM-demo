# resource "aws_instance" "pub1_subnet1" {
#   ami                         = "ami-0ed9277fb7eb570c9"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.subnet1.id
#   associate_public_ip_address = true
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   user_data                   = file("./scripts/apache1.sh")


#   tags = {
#     Name = "webserver_1"
#   }
# }



// secutiry group for ec2

# resource "aws_security_group" "all_sg" {
#   name        = "all_sg"
#   description = "all_sg"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description = "HTTP"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     description = "SSH"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "all_sg_terraform"
#   }
# }