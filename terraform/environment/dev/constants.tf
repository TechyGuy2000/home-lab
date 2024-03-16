locals {
  machine_map = {
    machines = {
      sipAdmin = {
        name        = "sipAdmin"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        ip_address  = "192.168.50.5"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      sipEngine1 = {
        name        = "sipEngine1"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        ip_address  = "192.168.50.6"
        gateway     = "192.168.50.1"
        description = "test_node"
      },
      sipEngine2 = {
        name        = "sipEngine2"
        target_node = "lab"
        os_type     = "cloud-init"
        agent       = 1        # Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the guest for this to have any effect.
        full_clone  = true     # Set to true to create a full clone, or false to create a linked clone. See the docs about cloning for more info. Only applies when clone is set.
        template    = "VM 8001" # Name of Template Used to Clone
        cores       = 2
        socket      = 1
        memory      = 4096
        storage     = "32G"
        ip_address  = "192.168.50.7"
        gateway     = "192.168.50.1"
        description = "test_node"
      }
    }
  }

  sip_machines = lookup(local.machine_map, "machines", {})
}
