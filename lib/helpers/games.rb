module Helpers
  class Games < Helpers::BaseHelper
    def grill_worms_hash(game, is_new_game = false)
      @grills_helper.grill_worms_hash(game, is_new_game)
    end

    def grill_worms_hash_with_all_inactive(game)
      @grills_helper.grill_worms_hash_with_all_inactive(game)
    end

    def player_options_hash(game, is_new_game = false)
      @player_options_helper.player_options_hash(game, is_new_game)
    end

    def update_roll_option_state(game, state)
      @player_options_helper.update_roll_option_state(game, state)
    end

    def check_for_bunk_after_roll(game, active_dice)
      @player_options_helper.check_for_bunk_after_roll(game, active_dice)
    end

    def check_for_bunk_after_dice_freeze(
      game,
      grill_worms,
      active_dice,
      frozen_dice,
      frozen_dice_sum
    )
      @player_options_helper.check_for_bunk_after_dice_freeze(
        game,
        grill_worms,
        active_dice,
        frozen_dice,
        frozen_dice_sum
      )
    end

    def clear_bunk_option(game)
      @player_options_helper.clear_bunk_option(game)
    end

    def check_for_game_end(game)
      @player_options_helper.check_for_game_end(game)
    end

    def new_active_dice_hash(game, is_new_game = false)
      @active_dices_helper.new_active_dice_hash(game, is_new_game)
    end

    def active_dice_hash_after_freeze(game)
      @active_dices_helper.active_dice_hash_after_freeze(game)
    end

    def frozen_dice_hash_after_freeze(game, dice_value)
      @frozen_dices_helper.frozen_dice_hash_after_freeze(game, dice_value)
    end

    def frozen_dice_sum(game, frozen_dice_values)
      @frozen_dices_helper.frozen_dice_sum(game, frozen_dice_values)
    end

    def player_worms_hash_after_claim(game, worm_value)
      @player_worms_helper.player_worms_hash_after_claim(game, worm_value)
    end

    def player_worms_hash_after_bunk_clear
      @player_worms_helper.player_worms_hash_after_bunk_clear
    end

    def sum_player_worms(player_worm_values)
      @player_worms_helper.sum_player_worms(player_worm_values)
    end
  end
end
