output "id" {
 value = aws_vpc.prodvpc.id

}

output "id-pr" {
 value = aws_subnet.private-sb.id
}


output "id-pub" { 
 value = aws_subnet.public-sb.id

}


output "id-dmz1" {
 value = aws_subnet.dmz-1.id

}


output "id-mp2" {
 value = aws_subnet.mp-2.id

}


