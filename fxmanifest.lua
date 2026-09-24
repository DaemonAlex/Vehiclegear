fx_version 'cerulean'
game 'gta5'
lua54 'true'

author 'Lapertaja, DPS fork'
description 'Take equipment out of a police car trunk (Del Perro Sands: per-gender clothing, ten LEO jobs)'
version '1.1.5-dps1'

client_script 'client.lua'

server_script 'server.lua'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

dependencies {
    'ox_lib',
    'ox_target',
    'ox_inventory'
}
