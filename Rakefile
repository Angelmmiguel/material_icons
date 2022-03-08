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
      puts 'Go to: https://github.com/google/material-design-icons/tree/master/font and download it.'
    else
      # Destination file
      out = File.new("unicode.css", "w")

      # Load from codepoints 
      File.readlines('codepoints').each do |line|
        el = line.split(' ')
        css_class = el.first
        # Fix for icons that start with number
        css_class = 'n123' if css_class == '123'
        css_class = 'n10k' if css_class == '10k'
        css_class = 'n10mp' if css_class == '10mp'
        css_class = 'n11mp' if css_class == '11mp'
        css_class = 'n12mp' if css_class == '12mp'
        css_class = 'n13mp' if css_class == '13mp'
        css_class = 'n14mp' if css_class == '14mp'
        css_class = 'n15mp' if css_class == '15mp'
        css_class = 'n16mp' if css_class == '16mp'
        css_class = 'n17mp' if css_class == '17mp'
        css_class = 'n18mp' if css_class == '18mp'
        css_class = 'n19mp' if css_class == '19mp'
        css_class = 'n1k' if css_class == '1k'
        css_class = 'n1k_plus' if css_class == '1k_plus'
        css_class = 'n1x_mobiledata' if css_class == '1x_mobiledata'
        css_class = 'n20mp' if css_class == '20mp'
        css_class = 'n21mp' if css_class == '21mp'
        css_class = 'n22mp' if css_class == '22mp'
        css_class = 'n23mp' if css_class == '23mp'
        css_class = 'n24mp' if css_class == '24mp'
        css_class = 'n2k' if css_class == '2k'
        css_class = 'n2k_plus' if css_class == '2k_plus'
        css_class = 'n2mp' if css_class == '2mp'
        css_class = 'n30fps' if css_class == '30fps'
        css_class = 'n30fps_select' if css_class == '30fps_select'
        css_class = 'n360' if css_class == '360'
        css_class = 'n3d_rotation' if css_class == '3d_rotation'
        css_class = 'n3g_mobiledata' if css_class == '3g_mobiledata'
        css_class = 'n3k' if css_class == '3k'
        css_class = 'n3k_plus' if css_class == '3k_plus'
        css_class = 'n3mp' if css_class == '3mp'
        css_class = 'n3p' if css_class == '3p'
        css_class = 'n4g_mobiledata' if css_class == '4g_mobiledata'
        css_class = 'n4g_plus_mobiledata' if css_class == '4g_plus_mobiledata'
        css_class = 'n4k' if css_class == '4k'
        css_class = 'n4k_plus' if css_class == '4k_plus'
        css_class = 'n4mp' if css_class == '4mp'
        css_class = 'n5g' if css_class == '5g'
        css_class = 'n5k' if css_class == '5k'
        css_class = 'n5k_plus' if css_class == '5k_plus'
        css_class = 'n5mp' if css_class == '5mp'
        css_class = 'n60fps' if css_class == '60fps'
        css_class = 'n60fps_select' if css_class == '60fps_select'
        css_class = 'n6_ft_apart' if css_class == '6_ft_apart'
        css_class = 'n6k' if css_class == '6k'
        css_class = 'n6k_plus' if css_class == '6k_plus'
        css_class = 'n6mp' if css_class == '6mp'
        css_class = 'n7k' if css_class == '7k'
        css_class = 'n7k_plus' if css_class == '7k_plus'
        css_class = 'n7mp' if css_class == '7mp'
        css_class = 'n8k' if css_class == '8k'
        css_class = 'n8k_plus' if css_class == '8k_plus'
        css_class = 'n8mp' if css_class == '8mp'
        css_class = 'n9k' if css_class == '9k'
        css_class = 'n9k_plus' if css_class == '9k_plus'
        css_class = 'n9mp' if css_class == '9mp'
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