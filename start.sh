echo "Run Jupyter Lab & VSCode & TTYD"
echo "Password: $PASSWORD"

if [ "$GH_REPO" ]
then
  echo "Github Repo: $GH_REPO"
  git clone ${GH_REPO}
  git config --global user.email "$USER_EMAIL"
  git config --global user.name "$USER_NAME"
fi
chmod -R 555 /workspace

jupyter notebook  --NotebookApp.token=$PASSWORD --ip=0.0.0.0 --port=$NOTEBOOK_PORT --allow-root &

if [ -z "$PASSWORD" ]
then
AUTH=none
else
AUTH=password
fi
code-server /workspace/ --bind-addr=0.0.0.0:$CODE_PORT --auth $AUTH &

if [ -z "$PASSWORD" ]
then
TTYD_PASS=
else
TTYD_PASS="-c :$PASSWORD"
fi
ttyd -p $TTYD_PORT $TTYD_PASS bash &

tail -f /dev/null