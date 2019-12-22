require "yaml"
<<<<<<< HEAD


def load_library(path)
  emoticon_library = YAML.load_file(path)
    hash = {"get_meaning" => {}, "get_emoticon" => {}}
    emoticon_library.each do |k, v|
      hash["get_meaning"][v[1]] = k
      hash["get_emoticon"][v[0]] = v[1]
    end #block
  return hash
end #method





def get_japanese_emoticon(path, e_emoticon)
  lib = load_library(path)
  if lib["get_emoticon"][e_emoticon]
    return lib["get_emoticon"][e_emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(path, j_emoticon)
  lib = load_library(path)
  if lib["get_meaning"][j_emoticon]
    return lib["get_meaning"][j_emoticon]
  else
    return "Sorry, that emoticon was not found"
  end

=======


def load_library(path)
  emoticon_library = YAML.load_file(path)
end

def get_japanese_emoticon(w_emoticon)
  emoticon_library = load_library("./lib/emoticons.yml")
  emoticon_library.each do |k,v|
    if v[0] == w_emoticon
      return v[1]
    end
  end
  return "Sorry, unknown emoticon"
end

def get_english_meaning(j_emoticon)
  emoticon_library = load_library("./lib/emoticons.yml")
  emoticon_library.each do |k, v|
    if v[1] == j_emoticon
      return k
    end #if
  end #emoticon_library.each
  return "Sorry, unkonwn emoticon"
>>>>>>> 7039edcf20f2c8573b74f74d191fa0b617580858
end #method

