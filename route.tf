resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.operations.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.operations.id}"
  }
  tags {
    Name = "Operations Public Route Table"
  }
}

resource "aws_route_table_association" "us-east-1a" {
  subnet_id = "${aws_subnet.us-east-1a.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "us-east-1b" {
  subnet_id = "${aws_subnet.us-east-1b.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "us-east-1c" {
  subnet_id = "${aws_subnet.us-east-1c.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "us-east-1d" {
  subnet_id = "${aws_subnet.us-east-1d.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "us-east-1e" {
  subnet_id = "${aws_subnet.us-east-1e.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "us-east-1f" {
  subnet_id = "${aws_subnet.us-east-1f.id}"
  route_table_id = "${aws_route_table.public.id}"
}
