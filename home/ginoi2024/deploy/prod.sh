#!/bin/bash
PUBLIC_HTML="/home/ginoi2024/public_html/"
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento maintenance:enable
cd ${PUBLIC_HTML} || exit
npm --prefix ${PUBLIC_HTML}app/design/frontend/Hyva/child/web/tailwind run build-prod
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento setup:upgrade
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento setup:di:compile
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento setup:static-content:deploy -f
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento cache:flush
php -d memory_limit=-1 ${PUBLIC_HTML}bin/magento maintenance:disable