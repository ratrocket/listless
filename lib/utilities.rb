module Utilities
  def self.slugify(s)
    ret = to_ascii(s).downcase
    ret.gsub!(/(\s\&\s)|(\s\&amp\;\s)/, ' and ') # convert & to "and"
    ret.gsub!(/\'/, '')   # replace non-chars
    ret.gsub!(/\W/, ' ')  # replace non-chars
    ret.gsub!(/\ +/, '_') # replace spaces
    ret.gsub!(/(_)$/, '') # trailing underscores
    ret.gsub!(/^(_)/, '') # leading underscores
    ret
  end

  private
  def self.to_ascii(s)
    require 'unicode'
    # http://www.jroller.com/obie/entry/fix_that_tranny_add_to
    Unicode.normalize_KD(s).unpack('U*').select {|cp| cp < 127}.pack('U*')
  end
end
