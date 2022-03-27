fx_version 'adamant'

game 'gta5'

client_scripts {
    'cl/*.lua',
    'cfg/*.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'sv/*.lua',
    'cfg/*.lua'
}