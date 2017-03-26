module Helpers
  module Images
    def self.get_dice_image(dice_value)
      @theme ||= Helpers::Themes.theme
      dice_image = @theme.image.where(
        'target LIKE ?', '%' + dice_value.to_s + ' pip die face%'
      ).take
      get_filename_with_filetype(dice_image)
    end

    def self.get_worm_tile_image(worm_count)
      @theme ||= Helpers::Themes.theme
      worm_image = @theme.image.where(
        'target LIKE ?', '%' + worm_count.to_s + ' worm tile%'
      ).take
      get_filename_with_filetype(worm_image)
    end

    private_class_method def self.get_filename_with_filetype(image)
      image.filename + '.' + image.filetype
    end
  end
end