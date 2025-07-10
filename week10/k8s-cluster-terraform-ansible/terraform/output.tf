output "instance_ips" {
  value = {
    for k, inst in aws_instance.debian_nodes :
    k => inst.public_ip
  }
}

resource "local_file" "machines" {
  content = templatefile("machines.txt.tftpl", {
    server-ip = aws_instance.debian_nodes["server"].public_ip,
    node-0-ip = aws_instance.debian_nodes["node0"].public_ip,
    node-1-ip = aws_instance.debian_nodes["node1"].public_ip
  })
  filename = "../ansible/machines.txt"
}

resource "local_file" "inventory" {
  content = templatefile("inventory.tftpl", {
    server-ip = aws_instance.debian_nodes["server"].public_ip,
    node-0-ip = aws_instance.debian_nodes["node0"].public_ip,
    node-1-ip = aws_instance.debian_nodes["node1"].public_ip
  })
  filename = "../ansible/inventory"
}

resource "local_file" "hosts" {
  content = templatefile("hosts.tftpl", {
    server-ip = aws_instance.debian_nodes["server"].public_ip,
    node-0-ip = aws_instance.debian_nodes["node0"].public_ip,
    node-1-ip = aws_instance.debian_nodes["node1"].public_ip
  })
  filename = "../ansible/hosts"
}