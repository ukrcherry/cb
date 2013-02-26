#!/usr/bin/env ruby

def generate_secret_code
  r = Random.new(3456)
  @secret = r.rand(10000)
end
