module ActionHelper
  SCREEN_EDGE = 10
  SWIPE_DURATION = 1000
  SCREEN_WIDTH = window_size.width
  SCREEN_HEIGHT = window_size.height
  HALF_SCREEN_WIDTH = SCREEN_WIDTH / 2
  HALF_SCREEN_HEIGHT = SCREEN_HEIGHT / 2

  class << self
    def press_enter
      press_keycode(66)
    end

    def swipe_from_middle_to_top
      swipe(start_x: HALF_SCREEN_WIDTH,
            start_y: HALF_SCREEN_HEIGHT,
            end_x: HALF_SCREEN_WIDTH,
            end_y: SCREEN_EDGE,
            duration: SWIPE_DURATION)
    end
  end
end
