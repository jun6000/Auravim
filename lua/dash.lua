local dashboard = require("dashboard")

local conf = {}

conf.header = {
            '                                ',
            '                                ',
            -- ' ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷ ',
            -- ' ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇ ',
            -- ' ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽ ',
            ' ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕ ',
            ' ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕ ',
            ' ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕ ',
            ' ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄ ',
            ' ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕ ',
            ' ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿ ',
            ' ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
            ' ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟ ',
            -- ' ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠ ',
            -- ' ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙ ',
            -- ' ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣ ',
            '                                ',
            'github.com/jun6000/Auravim',
            '--------------------------',
            '                                ',
}

conf.footer = {}

conf.center = {
  --[[ {
    icon = "  ",
    icon_hl = "string",
    desc = "Update nvim                             ",
    desc_hl = "string",
    key = "␣uu",
  }, ]]
  --[[ {
    icon = "󰈞  ",
    icon_hl = "string",
    desc = "Find  File                              ",
    desc_hl = "string",
    key = "␣ff",
  }, ]]
  {
    icon = "  ",
    icon_hl = "string",
    desc = "Recent files                            ",
    desc_hl = "string",
    action = "Telescope oldfiles",
    key = "␣fr",
    key_hl = "string",
  },
  --[[ {
    icon = "󰈚  ",
    icon_hl = "string",
    desc = "Project grep                            ",
    desc_hl = "string",
    key = "␣fg",
  }, ]]
  --[[ {
    icon = "  ",
    icon_hl = "string",
    desc = "Open Nvim config                        ",
    desc_hl = "string",
    key = "␣cc",
  }, ]]
  {
    icon = "  ",
    icon_hl = "string",
    desc = "New file                                ",
    desc_hl = "string",
    action = "enew",
    key = "a",
    key_hl = "string",
  },
  {
    icon = "󰗼  ",
    icon_hl = "string",
    desc = "Quit Nvim                               ",
    desc_hl = "string",
    action = "qa",
    key = "q",
    key_hl = "string",
  },
}

dashboard.setup({
  theme = 'doom',
  shortcut_type = 'number',
  config = conf
})
