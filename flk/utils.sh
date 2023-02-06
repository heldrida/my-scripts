# Common tasks

alias ssh_id_flk="ssh -i ~/.ssh/id_flk"

# Ssh into a server by running:
# ssh_to <name>, e.g. ssh_to ubuntu_for_dx
ssh_to() {
  case $1 in
    ubuntu_for_dx)
        ssh_id_flk "$FLK_NET_DO_UBUNTU_DX_USER_AT"
      ;;
    debian_for_dx)
        ssh_id_flk "$FLK_NET_DO_DEBIAN_DX_USER_AT"
      ;;
    centos_for_dx)
        ssh_id_flk "$FLK_NET_DO_CENTOS_DX_USER_AT"
      ;;
    fedora_for_dx)
        ssh_id_flk "$FLK_NET_DO_FEDORA_DX_USER_AT"
      ;;
  esac
}

