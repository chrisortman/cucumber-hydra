hash boot2docker 2>/dev/null || { echo >&2 "I require boot2docker but it's not installed.  Aborting."; exit 1; }
hash docker 2>/dev/null || { echo >&2 "I require docker but it's not installed.  Aborting."; exit 1; }
hash git 2>/dev/null || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

if [[ "$(boot2docker status)" -ne "running" ]]; then
  echo "Please start boot2docker using:"
  echo "boot2docker start"
  echo "\$\(boot2docker shellinit\)"
  exit 1
fi


#Build the container
pushd rvm-base
docker build -t chrisortman/rvm-base .
popd

