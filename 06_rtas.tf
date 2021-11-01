resource "aws_route_table_association" "hamju_rtas_a" {
  subnet_id = aws_subnet.hamju_puba.id
  route_table_id = aws_route_table.hamju_rt.id
}

resource "aws_route_table_association" "hamju_rtas_c" {
  subnet_id = aws_subnet.hamju_pubc.id
  route_table_id = aws_route_table.hamju_rt.id
}