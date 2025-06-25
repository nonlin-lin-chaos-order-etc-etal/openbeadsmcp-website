echo "started $0..."

echo "$0 - round 1"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

echo "$0 - round 2"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo "$0 - round 3"

nvm install

echo "$0 - round 4"

nvm use

echo "$0 - round 5"

npm install --global yarn
echo "yarn --version"
yarn --version

echo "$0 - round 6"

npm install --global quasar
echo "npx quasar --version"
npx quasar --version

echo "$0 - round 7"

yarn

echo "$0 - round 8"

echo "$0 completed."
