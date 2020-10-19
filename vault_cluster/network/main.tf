provider "aws" {
  region = var.region
}


resource "aws_vpc" "prodvpc" {
  cidr_block       = "192.168.0.0/19"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "prodvpc"
  }
}


resource "aws_subnet" "private-sb" {
  vpc_id     = aws_vpc.prodvpc.id
  cidr_block = "192.168.0.0/23"

  tags = {
    Name = "private-sb"
  }
}


resource "aws_subnet" "public-sb" {
  vpc_id     = aws_vpc.prodvpc.id
  cidr_block = "192.168.2.0/23"

  tags = {
    Name = "public-sb"
  }
}

resource "aws_subnet" "dmz-1" {
  vpc_id     = aws_vpc.prodvpc.id
  cidr_block = "192.168.10.0/23"

  tags = {
    Name = "dmz-1"
  }
}


resource "aws_subnet" "mp-2" {
  vpc_id     = aws_vpc.prodvpc.id
  cidr_block = "192.168.4.0/23"

  tags = {
    Name = "mp-2"
  }
}
