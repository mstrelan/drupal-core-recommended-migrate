#!/bin/bash

# Replace drupal/core with drupal/core-recommended
sed -i 's/"drupal\/core"/"drupal\/core-recommended"/g' composer.json

# Replace webflo/drupal-core-require-dev with drupal/core-dev
sed -i 's/"webflo\/drupal-core-require-dev"/"drupal\/core-dev"/g' composer.json

# Remove installed dependencies that may conflict with drupal/core-recommended
composer remove -n \
composer/installers \
drupal/core \
webflo/drupal-core-require-dev \
symfony/browser-kit \
symfony/class-loader \
symfony/console \
symfony/debug \
symfony/dependency-injection \
symfony/event-dispatcher \
symfony/filesystem \
symfony/finder \
symfony/http-foundation \
symfony/http-kernel \
symfony/lock \
symfony/routing \
symfony/serializer \
symfony/translation \
symfony/validator \
symfony/process \
symfony/polyfill-iconv \
symfony/yaml \
typo3/phar-stream-wrapper \
twig/twig \
doctrine/common \
doctrine/annotations \
guzzlehttp/guzzle \
symfony-cmf/routing \
easyrdf/easyrdf \
zendframework/zend-feed \
stack/builder \
egulias/email-validator \
masterminds/html5 \
symfony/psr-http-message-bridge \
zendframework/zend-diactoros \
composer/semver \
paragonie/random_compat \
asm89/stack-cors \
pear/archive_tar \
solarium/solarium

# Run the final update to drupal/core-recommended and drupal/core-dev
composer update drupal/core-recommended drupal/core-dev

# If you had Solarium 5.1 installed with symfony/event-dispatcher hack e.g. for
# search_api_solr then we had to remove it to get symfony/event-dispatcher to
# a supported version.
echo "If you previously had solarium/solarium in your composer.json file it's now been removed. Please add it back."
