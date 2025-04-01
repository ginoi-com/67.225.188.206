#!/bin/bash

PUBLIC_HTML="/home/ginoi2024/public_html/"
#GIT_REPO="git@github.com:ginoijewels/ginoi.git"
#GIT_BRANCH="master"

# Enable maintenance mode
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento maintenance:enable

# Navigate to the project directory
cd ${PUBLIC_HTML} || exit

# Fetch latest changes from Git
#git fetch origin
#git reset --hard origin/${GIT_BRANCH}
#git clean -fd

# Hyvä CSS build
npm --prefix ${PUBLIC_HTML}app/design/frontend/Hyva/child/web/tailwind run build-prod

# Run Magento upgrade and deployment commands
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento setup:upgrade
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento setup:di:compile
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento setup:static-content:deploy -f
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento cache:flush
#php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento indexer:reindex

# Disable maintenance mode
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento maintenance:disable
