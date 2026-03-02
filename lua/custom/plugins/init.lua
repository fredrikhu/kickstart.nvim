-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      require('orgmode').setup {
        org_agenda_files = '~/org/**/*',
        org_default_notes_file = '~/org/refile.org',
      }
    end,
  },
  {
    'akinsho/org-bullets.nvim',
    ft = { 'org' },
    config = function()
      require('org-bullets').setup {
        symbols = {
          headlines = { '◉', '○', '✸', '✿' },
          checkboxes = {
            half = { '', 'OrgTSCheckboxHalfChecked' },
            done = { '✓', 'OrgDone' },
            todo = { '˙', 'OrgTODO' },
          },
        },
      }
    end,
  },
}
