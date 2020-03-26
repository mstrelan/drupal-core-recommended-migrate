# drupal-core-recommended-migrate
Migrates from `drupal/core` to `drupal/core-recommended` and
`webflo/drupal-core-require-dev` to `drupal/core-dev`.

## Why use this script?
If you have trouble migrating due to incompatible versions you may need to
revert to lower versions of implicit dependencies, particularly symfony.

## How does it work?
It updates the `require` and `require-dev` section of your composer.json file,
removes core's dependencies and updates to `drupal/core-recommended`.
