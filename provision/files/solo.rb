base = File.expand_path('..', __FILE__)

root_path        "#{base}"
file_cache_path  '/tmp/chef-solo'
cookbook_path    ["#{base}/site-cookbooks", "#{base}/cookbooks"]
