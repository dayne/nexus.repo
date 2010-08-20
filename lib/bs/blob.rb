=begin
Blob
  - guid        # ---
  * f10ks # first 10k sha1sum #
  * f10km # first 10k md5sum  #
  * filesize      # 
  * name        # magicpants.avi
  * relative repository path  # /tv/entertainment/magicpants.avi 
  * filetype      # 
  - sha1sum     #
  - tags        #
  - global-name     # type.show.season.episode.part
          #   tv.good_eats.1.3
          #   movie.terminator.1.widescreen
=end
class Blob
  attr_accessor :f10ks, :f10km, :size, :name, :path, :filetype
  def initialize(opts = {})
    populate_10k
  end


  def populate_10k
    # set f10ks
    # set f10km
  end
end

# 


