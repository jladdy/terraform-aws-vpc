resource "aws_internet_gateway" "operations" {
  vpc_id = "${aws_vpc.operations.id}"
  tags {
    Name = "Operations IGW"
  }
}
