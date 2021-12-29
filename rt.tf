# resource "aws_route_table" "pub_rt" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.gw.id
#   }

#   tags = {
#     Name = "my-demo-rt"
#   }
# }


// subnet association 

# resource "aws_route_table_association" "subnet1_asso" {
#   subnet_id      = aws_subnet.subnet1.id
#   route_table_id = aws_route_table.pub_rt.id
# }

# resource "aws_route_table_association" "subnet2_asso" {
#   subnet_id      = aws_subnet.subnet2.id
#   route_table_id = aws_route_table.pub_rt.id
# }