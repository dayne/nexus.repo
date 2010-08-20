=begin


=end


class Repo
  def initialize
  end

  def save(filename)
  end

  def self.load(filename)
    puts "Loading my junk now from #{filename}" if $verbose
    repo = YAML.load_file(filename) 
    puts repo.inspect
    repo
  end


  def self.find(target)
    p = File.expand_path( target ) 
    raise "Not a directory: #{p}" unless File.directory? p

    # walk up dir path until I find a .bs_repo.yaml # blow up if not found

    while( !File.exists?( File.join(p,'.bs_repo') ) and (p != File.dirname(p)) ) do 
      puts "checking for .bs_repo in #{p}" if $verbose
      p = File.dirname(p)
    end

    if File.exists?( File.join(p, '.bs_repo') )
      # load the repo and return it
      self.load( File.join(p, '.bs_repo') )
    else
      return nil
    end
  end
end
