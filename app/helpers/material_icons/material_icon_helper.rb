module MaterialIcons
  #
  # Helper of material icons. This method return a singleton MaterialIcon class
  # to get icons in the UI.
  #
  module MaterialIconHelper
    # Singleton
    @@material_icon = MaterialIcon.new

    #
    # Reset the previous values of the MaterialIcon class and return
    # the object to render a new icon.
    #
    # == Returns:
    # MaterialIcon instance
    #
    def material_icon
      @@material_icon.reset
    end

    # Typeless alias method
    alias_method :mi, :material_icon
  end
end
