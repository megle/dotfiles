require 'fileutils'

dotfiles = File.dirname(__FILE__)

SYMLINKS = {
  'vimrc' => '~/.vimrc',
  'vim' => '~/.vim', 
  'zshrc' => '~/.zshrc'
}

task :install do
  SYMLINKS.each do |source, dest|
    source = dotfiles + '/' + source
    dest.sub!('~', ENV['HOME'])
    symlink source, dest
  end
end
