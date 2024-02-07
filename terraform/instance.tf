resource "aws_key_pair" "github_cicd_key" {
  key_name   = "github_cicd_project"
  public_key = file("github_cicd_project.pub")
}
## Creates an instance
resource "aws_instance" "github_cicd_pro" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.github_cicd_key.key_name
  vpc_security_group_ids = ["sg-0cb0232372fcb6380"]
  availability_zone      = var.ZONE1
  tags = {
    Name = "Github_Project_instance"
  }

  provisioner "file" {
    source      = "start.sh"
    destination = "/tmp/start.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/start.sh",
      "sudo /tmp/start.sh"
    ]
  }
  connection {
    user        = var.USER
    private_key = file("github_cicd_project")
    host        = self.public_ip
  }
}
