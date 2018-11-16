Redmine::Plugin.register :mail_reactions do
  name 'Mail Reactions plugin'
  author 'SAM58'
  description 'This is a plugin for Redmine. Create reaction for input emails'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'


  requires_redmine :version_or_higher => '3.3.0'

  settings :default => {
      :sort_category_tree         => 1,
      :disable_article_summaries  => 0
  }, :partial => 'mail_reactions/mail_reactions_settings'


  menu :admin_menu,
       :mail_reactions,
       { controller: 'mail_reactions', action: 'index' },
       {
           caption: :title_mail_reactions,
           :html => { :class => 'icon icon-email' }
       }

end
