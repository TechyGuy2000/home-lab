resource "proxmox_vm_qemu" "hashi_servers" {
  for_each         = local.sip_machines
  name             = each.value.name
  qemu_os          = "other"
  desc             = each.value.description
  target_node      = each.value.target_node
  os_type          = each.value.os_type
  full_clone       = true
  clone            = each.value.template
  memory           = each.value.memory
  numa             = true
  sockets          = each.value.socket
  cores            = each.value.cores
  ssh_user         = var.ci_user
  sshkeys          = file(var.public_key_path)
  ciuser           = var.ci_user
  agent            = each.value.agent
  ipconfig0        = "ip=${each.value.ip_address}/24,gw=${each.value.gateway}"
  cipassword       = var.ci_password
  automatic_reboot = true
  define_connection_info = true
  cpu = "host"
  onboot = true
  cloudinit_cdrom_storage = "local-lvm"
  scsihw                  = "virtio-scsi-pci"
  boot                    = "order=scsi0;ide3"

  timeouts {
    create = "60m"
    delete = "2h"
  }

    disks {
        scsi {
            scsi0 {
                disk {
                    storage            = "local-lvm"
                    size               = 20
                }
            }
        }
    }


  network {
    bridge  = "vmbr0"
    model   = "virtio"
    macaddr = each.value.macaddr
  }

  provisioner "remote-exec" {
    inline = [
      "sudo -S hostnamectl set-hostname ${each.value.name}",
    ]

    connection {
      type        = "ssh"
      host        = each.value.ip_address
      user        = var.ci_user
      private_key = file(var.private_key_path)
      agent       = false
    }
  }
}
