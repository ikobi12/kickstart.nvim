-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'echasnovski/mini.comment',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('mini.comment').setup {
        options = {
          -- Function to compute custom 'commentstring' (optional)
          custom_commentstring = nil,
          -- Whether to ignore blank lines when commenting
          ignore_blank_line = false,
          -- Whether to recognize as comment only lines without indent
          start_of_line = false,
          -- Whether to add space between comment chars and line content
          pad_comment_parts = true,
        },
        mappings = {
          -- Toggle comment (like `gcip` - comment paragraph) for both Normal and Visual modes
          comment = '<leader>c',
          -- Toggle comment on current line
          comment_line = '<leader>cc',
          -- Toggle comment on visual selection
          comment_visual = '<leader>c',
          -- Define 'comment' textobject (like `dgc` - delete whole comment block)
          textobject = '<leader>c',
        },
      }
    end,
  },
  {
    'echasnovski/mini.move',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('mini.move').setup {
        -- Module mappings. Use `''` (empty string) to disable one.
        mappings = {
          -- Move visual selection in Visual mode
          left = '<M-h>', -- Alt+h
          right = '<M-l>', -- Alt+l
          down = '<M-j>', -- Alt+j
          up = '<M-k>', -- Alt+k
          -- Move current line in Normal mode
          line_left = '<M-h>', -- Alt+h
          line_right = '<M-l>', -- Alt+l
          line_down = '<M-j>', -- Alt+j
          line_up = '<M-k>', -- Alt+k
        },
        -- Options which control moving behavior
        options = {
          -- Automatically reindent selection during linewise vertical move
          reindent_linewise = true,
        },
      }
    end,
  },
}
