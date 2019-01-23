require_relative "../slot_machine"

def test_scenario(reels, expected_score)
  it "should return #{expected_score} when given #{reels.join(', ')}" do
    slot_machine = SlotMachine.new
    # reels = ["Bell", "Seven", "Joker"]
    expect(slot_machine.score(reels)).to eq(expected_score)
  end
end

describe SlotMachine do
  describe '#score' do
    test_scenario(["Bell", "Seven", "Joker"], 0)
    test_scenario(["Joker", "Joker", "Joker"], 50)
    test_scenario(["Bell", "Bell", "Joker"], 15)
    test_scenario(["Bell", "Joker", "Joker"], 25)
  end
end
