#!/bin/bash

source lib/setup.sh

execute_manifest <<'PP'
notify { 'foo':
}

notify { 'bar':
}

notify { 'baz':
    require => [Notify['foo'], Notify['bar']],
}
PP

