resource "aws_route_table_association" "hamju_ngartas_a" {
  subnet_id      = aws_subnet.hamju_pria.id
  route_table_id = aws_route_table.hamju_ngart_a.id
}

resource "aws_route_table_association" "hamju_ngartas_c" {
  subnet_id      = aws_subnet.hamju_pric.id
  route_table_id = aws_route_table.hamju_ngart_c.id
}