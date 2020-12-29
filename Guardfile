# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"
guard :rspec, cmd: "bin/rspec" do
  watch(%r{^app/models/(.+)\.rb$}) { |m| "spec/features/#{m[1]}s" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$}) { |m| "spec/features/#{m[1]}" }
  watch(rails.routes)          { "#{rspec.spec_dir}" }
end
