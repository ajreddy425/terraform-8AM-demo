# resource "aws_instance" "pub2_subnet2" {
#   ami                         = "ami-0ed9277fb7eb570c9"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.subnet2.id
#   associate_public_ip_address = true
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   user_data                   = file("./scripts/apache2.sh")


#   tags = {
#     Name = "webserver_2"
#   }
# }