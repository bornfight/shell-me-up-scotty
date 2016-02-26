function choice {
  echo $1
  select yn in "Yes" "No"; do
    case $yn in
      Yes ) return 0;; #0 is true in bash
      No ) return 1;;
    esac
  done
}
