function usage {
  echo
  echo "  Usage:" 
  echo "    $(basename ${0}) <python versoin> <pyenv name>"
  echo
  echo "  Example:"
  echo "    ./$(basename ${0}) 3.6.4 my_py3"
  echo
  echo "  Options:"
  echo "    --help, -h    print this."
  echo "    --debug, -d   debug mode."
  echo
}

set +u

case ${1} in
  help|--help|-h)
    usage
    exit 0
  ;;

  --debug|-d)
    set -x
    shift
  ;;

  *)
    # check parameter
    if [ $# -lt 2 ]; then
      usage
      exit 1
    fi
  ;;
esac

set -u
