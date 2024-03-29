locals {
  machine_map = {
    machines = {
      consul1 = {
        name        = "consul1"
        domain      = "lan"
        target_node = "cloud"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8000" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "D2:4E:76:F4:23:EC"
        ip_address  = "192.168.50.8"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      consul2 = {
        name        = "consul2"
        domain      = "lan"
        target_node = "cloud"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8000" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "5E:CE:DA:3B:0F:D3"
        ip_address  = "192.168.50.9"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      consul3 = {
        name        = "consul3"
        domain      = "lan"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "BA:30:5E:BC:6F:12"
        ip_address  = "192.168.50.10"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      vault1 = {
        name        = "vault1"
        domain      = "lan"
        target_node = "cloud"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8000" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "32:8E:12:36:F5:61"
        ip_address  = "192.168.50.11"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      vault2 = {
        name        = "vault2"
        domain      = "lan"
        target_node = "cloud"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8000" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "86:DC:9E:BE:99:0C"
        ip_address  = "192.168.50.12"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      vault3 = {
        name        = "vault3"
        domain      = "lan"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "0E:48:D1:90:1B:10"
        ip_address  = "192.168.50.13"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      nomad1 = {
        name        = "nomad1"
        domain      = "lan"
        target_node = "cloud"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8000" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "86:F7:08:03:EB:26"
        ip_address  = "192.168.50.14"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      nomad2 = {
        name        = "nomad2"
        domain      = "lan"
        target_node = "cloud"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8000" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "2E:F4:71:3B:22:D5"
        ip_address  = "192.168.50.15"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      nomad3 = {
        name        = "nomad3"
        domain      = "lan"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "62:3C:72:36:F4:5D"
        ip_address  = "192.168.50.16"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      docker1 = {
        name        = "docker1"
        domain      = "lan"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "EE:82:50:8D:A7:F2"
        ip_address  = "192.168.50.17"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      docker2 = {
        name        = "docker2"
        domain      = "lan"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "9E:8C:ED:F0:7C:07"
        ip_address  = "192.168.50.18"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      docker3 = {
        name        = "docker3"
        domain      = "lan"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        macaddr     = "D2:9A:0F:7A:14:F3"
        ip_address  = "192.168.50.19"
        gateway     = "192.168.50.1"
        description = "test_node"
      }
    }
  }

  sip_machines = lookup(local.machine_map, "machines", {})
}
