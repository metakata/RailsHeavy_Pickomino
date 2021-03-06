module Helpers
  class FrozenDices
    attr_writer :images_helper

    def initialize
      @images_helper = Helpers::Images.new
    end

    def frozen_dice_hash_after_freeze(game, dice_value)
      @frozen_dice_set = current_frozen_dice_set(game)
      FreezeDice.call(game: game, dice_value: dice_value, frozen_dice_set: @frozen_dice_set)
      create_frozen_dice_hash
    end

    def frozen_dice_sum(game, frozen_dice_values)
      result = SumFrozenDice.call(game: game, frozen_dice_values: frozen_dice_values)
      result.frozen_dice_sum
    end

    private

    def current_frozen_dice_set(game)
      FrozenDiceSet.joins(:game).where(games: { id: game }).last
    end

    def create_frozen_dice_hash
      return [] if @frozen_dice_set.frozen_dice.nil?
      frozen_dice_hash = FrozenDiceSet.select(:value)
        .joins(frozen_dice: :dice)
        .where('id' => @frozen_dice_set.id).map do |dice|
          {
            value: dice.value,
            image: @images_helper.get_dice_image(dice.value)
          }
        end
      frozen_dice_hash.compact
    end
  end
end
