require "stringer/version"

module Stringer
  def self.spacify *strings
    strings.join(" ")
  end
  def self.minify str1, length
    if str1.length > length then
      str1[0...length]+"..."
    else
      str1
    end
  end
  def self.replacify str1, to_replace, replace_with
    str1.gsub(to_replace, replace_with)
  end
  def self.tokenize str1
    str1.split(" ")
  end
  def self.removify str1, rem_str
    str1.gsub(rem_str, "")
  end
end
