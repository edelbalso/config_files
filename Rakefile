########################################################################
###
### Eduardo Del Balso's Vim Setup
### Based on the work of Ben Bleything.
### Rakefile updated to support zip and gzip files
###
### Modified from: http://github.com/bleything/dotvim
##
########################################################################

require 'pathname'

task :default do
  puts "Hi! All this Rakefile can do right now is update the bundles:"
  puts # blank line
  puts "  $ rake vim:update_bundles"
end

namespace :vim do

  BUNDLES = {
    # plugins
    :bufexplorer           => "http://www.vim.org/scripts/download_script.php?src_id=12363",
    :nerdcommenter         => "git://github.com/scrooloose/nerdcommenter.git",
    :nerdtree              => "git://github.com/scrooloose/nerdtree.git",
    :rails                 => "git://github.com/tpope/vim-rails.git",
    :cucumber              => "git://github.com/tpope/vim-cucumber.git",
    :surround              => "git://github.com/tpope/vim-surround.git",
    :ack                   => "git://github.com/mileszs/ack.vim.git",
    :zoomwin               => "git://github.com/vim-scripts/ZoomWin.git",
    :align                 => "git://github.com/tsaleh/vim-align.git",
    :snipmate              => "git://github.com/msanders/snipmate.vim.git",
    # :tabular             => "git://github.com/godlygeek/tabular",
    :taglist               => "http://www.vim.org/scripts/download_script.php?src_id=7701",
    # :lusty_explorer      => "git://github.com/sjbach/lusty.git",
    # :ragtag              => "git://github.com/tpope/vim-ragtag.git",
    # :matchit             => "http://www.vim.org/scripts/download_script.php?src_id=8196",
    :endwise               => "git://github.com/tpope/vim-endwise.git",
    :syntastic             => "git://github.com/scrooloose/syntastic.git",
    :git                 => "git://github.com/tpope/vim-git.git",
    :fugitive            => "git://github.com/tpope/vim-fugitive.git",
    # :jekyll              => "git://github.com/csexton/jekyll.vim.git",
    # :rvm                 => "https://github.com/csexton/rvm.vim",
    :css_colors            => "http://www.vim.org/scripts/download_script.php?src_id=8846",

    :gundo                 => "git://github.com/sjl/gundo.vim.git",
    :indent_javascript     => "git://github.com/pangloss/vim-javascript.git",

    # :vimtasks            => "git://github.com/samsonw/vim-task.git",

    # :command_t           => "http://www.vim.org/scripts/download_script.php?src_id=15560"
    # :command_t           => "git://git.wincent.com/command-t.git"

    #    :grep             => "http://www.vim.org/scripts/download_script.php?src_id=7645",

    # syntax definitions
    :syntax_sass           => "git://github.com/cakebaker/scss-syntax.vim.git",
    # :syntax_markdown     => "git://github.com/ujihisa/vim-markdown.git",
    # :syntax_textile      => "git://github.com/timcharper/textile.vim.git",
    #    :syntax_cucumber  => "git://github.com/tpope/vim-cucumber.git",
    # :syntax_git          => "git://github.com/tpope/vim-git.git",
    # :syntax_rdoc         => "git://github.com/hallison/vim-rdoc.git",
    #    :syntax_slidedown => "git://github.com/bleything/vim-slidedown.git",
    #    :syntax_twiki     => "http://www.vim.org/scripts/download_script.php?src_id=6460",

    # Color Schemes
    #    :color_sampler    => "http://www.vim.org/scripts/download_script.php?src_id=12179",
    :blackboard          => "git://github.com/nelstrom/vim-blackboard.git",
    :dawn                 => "http://www.vim.org/scripts/download_script.php?src_id=4807",
  }

  desc "update any bundles defined in the Rakefile"
  task :update do

    bundle_home = Pathname.new( ENV['HOME'] ) + '.vim' + 'bundle'
    vimball_home = Pathname.new( ENV['HOME'] ) + '.vim' + 'vimrc' + 'vimballs'

    puts "### Starting Vim Update ###"
    puts '  -- creating bundle folder in ~/.vim/' unless File.directory? bundle_home
    mkdir_p bundle_home

    rm_rf vimball_home

    BUNDLES.sort_by {|k,v| k.to_s }.each do |bundle, location|

      target_path = bundle_home + bundle.to_s

      status_txt = "*** Installing #{bundle} to #{target_path} from #{location} ***"
      puts
      puts
      puts "*" * (status_txt.size)
      puts status_txt
      puts "*" * (status_txt.size)
      puts # blank line

      puts "  -- deleting #{target_path}"
      rm_rf target_path

      case location.match( /^(.*?):/ )[1]
      when 'git'
        puts "  -- Identified #{bundle} as :: GIT REPOSITORY"
        sh "git clone #{location} #{target_path} > /dev/null"
        rm_rf target_path + '.git'
        if bundle == :command_t
          puts "  -- making ruby extensions for command_t"
          sh "cd #{target_path}/ruby/command-t && rvm system ruby extconf.rb && make clean && make"
        end
      when 'http'

        mkdir_p target_path
        file_name = %x[cd #{target_path} && wget --content-disposition '#{location}' 2>&1].match(/`(.*)' saved/)[1]

        if File.extname(file_name) == '.vba'
          puts "  -- Identified #{bundle} as :: VIMBALL ARCHIVE"
          puts "  -- Creating vimball file: #{vimball_home}" unless File.exist? vimball_home
          puts "  -- Extracting vimball:"
          sh "cd #{target_path} && vim -c 'so %' -c 'q' #{file_name}"

          if File.directory? Pathname.new( ENV['HOME'] ) + '.vim' + 'plugin'
            puts "  -- Moving plugin folder"
            sh "mv #{Pathname.new( ENV['HOME'] ) + '.vim' + 'plugin'} #{target_path}/"
          end

          puts "  -- Deleting vimball file"
          rm_rf File.join(target_path,file_name)

        elsif File.extname(file_name) == '.zip'
          puts "  -- Identified file as :: ZIP ARCHIVE"
          sh "cd #{target_path} && unzip #{file_name}"
          puts "  -- deleting temporary download for #{bundle.to_s}"
          sh "rm #{target_path}/#{file_name}"
        elsif File.extname(file_name) == '.vim'
          puts "  -- Identified file as :: VIM FILE"
          mkdir_p "#{target_path}/plugin"
          puts "  -- putting downloaded ASCII file to #{target_path}/plugin/#{file_name}.vim"
          sh "mv #{target_path}/#{file_name} #{target_path}/plugin/#{file_name}.vim"
        elsif file_name =~ /\.tar\.gz$/
          puts "  -- Identified file as :: GZIP ARCHIVE"
          puts "  -- extracting #{file_name}"
          sh "cd #{target_path} && tar -zxf #{file_name}"
          puts "  -- deleting #{file_name}"
          sh "rm #{File.join(target_path,file_name)}"
        else
          puts "ERROR: Unrecognized plugin type: #{File.extname(file_name)}"
          exit
        end
      end

      docdir = target_path + 'doc'
      if docdir.exist?
        puts "  -- doc dir exists; tagging"
        sh "vim -u NONE -esX -c 'helptags #{docdir}' -c quit"
      end

      puts # blank line
    end
  end # task :bundles

end # namespace :update

