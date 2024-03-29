require('__stdlib__/stdlib/event/event').set_protected_mode(true)
require('__stdlib__/stdlib/event/player').register_events(true)
require('__stdlib__/stdlib/event/force').register_events(true)

require('scripts/inventory-tools')
require('scripts/filter-fill')
require('scripts/copy-chests')
require('scripts/inventory-sort')
require('scripts/chest-limit')
require('scripts/auto-trash-fix')
require('scripts/auto-stock')
require('scripts/item-count')
require('scripts/auto-deconstruct')
require('scripts/zapper')

remote.add_interface(script.mod_name, require('__stdlib__/stdlib/scripts/interface'))
