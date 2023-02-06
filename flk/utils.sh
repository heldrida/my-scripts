# Common tasks

alias ssh_id_helder_flk="ssh -i ~/.ssh/id_flk"

# Ssh into a server by running:
# ssh_to <name>, e.g. ssh_to ubuntu_for_dx
ssh_to() {
  case $1 in
    ubuntu_for_dx)
        ssh_id_helder_flk "$FLK_NET_DO_UBUNTU_DX_USER_AT"
      ;;
  esac
}

