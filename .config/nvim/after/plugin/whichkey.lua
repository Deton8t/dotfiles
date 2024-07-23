local wk = require("which-key")


wk.register({
   o = {
       name = "obsidian",
       f = { "Open File in Workspace" },
       w = { "Open Workspace" },
       g = {
           name = "go",
           d = { "Definition (follow link)" },
       }
   },
       }, { prefix = "<leader>" })
