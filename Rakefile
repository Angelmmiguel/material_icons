#!/usr/bin/env rake

# Rake tasks
namespace :material_icons do
  #
  # Get the CSS to use unicode instead of ligatures.
  #
  desc "Create the CSS Unicode classes"
  task :unicode_css do
    # Check codepoint file
    unless File.exist?('codepoints')
      puts 'Codepoints file is required to perform this operation.'
      puts 'Go to: https://github.com/google/material-design-icons and download it.'
    else
      # Destination file
      out = File.new("unicode.css", "w")

      # Load from codepoints 
      File.readlines('codepoints').each do |line|
        el = line.split(' ')
        css_class = el.first.gsub('_', '-')
        unicode = el.last
        # Need this strange indentation for CSS...
        css =
<<-FOO
.material-icons.#{css_class}:before,
.mi.#{css_class}:before {
  content: '\\#{unicode}';
}
FOO
        # Print in the file
        out.puts css
      end
    end
  end
end