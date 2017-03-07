class Roll
  include Interactor

  def call
    @number_of_active_dice = context.number_of_active_dice
    @active_dice_set = context.active_dice_set
    associate_random_active_dice_with_active_dice_set
  end

  def associate_random_active_dice_with_active_dice_set
    @number_of_active_dice.times do
      active_dice = @active_dice_set.active_dice.create
      dice = active_dice.dice.build
      dice.create_random_dice
    end
  end
end