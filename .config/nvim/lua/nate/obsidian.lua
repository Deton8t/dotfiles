vim.cmd("set conceallevel=2")
require("obsidian").setup({
    workspaces = {
        {
            name = "RPG",
            path = "~/Vaults/RobotRPG",
        },
        {
            name = "Temple",
            path = "/Users/nateharris/Library/Mobile Documents/iCloud~md~obsidian/Documents/Temple Class Notes",
        },
        {
            name = "Zettel Personal",
            path = "~/Vaults/ZettelkasenNotes/",
            overrides = {
                daily_notes ={

                  folder = "Fleeting",
                },
                templates = {
                    subdir = "Templates",
                    date_format = "%Y-%m-%d-%a",
                    time_format = "%H:%M",
                },
            },
        },
    },
    -- @param url string
    follow_url_func = function(url)
        -- Open the URL in the default web browser.
        vim.fn.jobstart({"open", url})  -- Mac OS
    end,
})

