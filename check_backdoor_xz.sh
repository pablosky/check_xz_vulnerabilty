which xz

if [ $? -eq 0 ]; then
  echo "xz is installed, checking version"
  xz --version | grep -E "5.6.0|5.6.1"
  # if version is  5.6.0 or  5.6.1, then it is vulnerable 
  if [ $? -eq 0 ]; then
    echo "xz is vulnerable upgrade your version usign brew update"
    # we downgrade 5.4.6
  else
    echo "xz is not vulnerable"
  fi

else
  echo "xz is not installed"
fi

