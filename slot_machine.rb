class SlotMachine
  SYMBOLS = ['Cherry', 'Seven', 'Bell', 'Star', 'Joker']

  def score(reels)
    if reels.uniq.length == 1
      # score
      index = SYMBOLS.index(reels[0])
      (index + 1) * 10
    elsif reels.uniq.length == 2 && reels.include?('Joker')
      index = SYMBOLS.index(reels.sort[1])
      (index + 1) * 5
    else
      0
    end
  end
end
