data "aws_vpc" "blue-green-deploy" {
    filter {
        name   = "tag:Name"
        values = ["blue-green-deploy"]
    }
}

data "aws_subnet" "private" {
    filter {
        name   = "tag:Name"
        values = ["private"]
    }
}