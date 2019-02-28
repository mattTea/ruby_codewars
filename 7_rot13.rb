# https://www.codewars.com/kata/530e15517bc88ac656000716/train/ruby

def rot13(string)
  string.tr("A-Ma-mN-Zn-z", "N-Zn-zA-Ma-m")
end

rot13("Hello Matt!")