require './lib/vampire'

RSpec.describe Vampire do
  xit "has a name" do
    vampire = Vampire.new("Dracula", "red")

    expect(vampire.name).to eq("Dracula")
  end

  xit "is named something else" do
    vampire = Vampire.new("Vladimir", "blue")

    expect(vampire.name).to eq("Vladimir")
  end

  xit "keeps a pet bat by default" do
    vampire = Vampire.new("Ruthven", "indigo")

    expect(vampire.pet).to eq("bat")
  end

  xit "can have other pets" do
    vampire = Vampire.new("Varney", "orange", "fox")

    expect(vampire.pet).to eq("fox")
  end

  xit "is thirsty by default" do
    vampire = Vampire.new("Count von Count", "black")

    expect(vampire.thirsty?).to eq(true)
  end

  xit "is not thirsty after drinking" do
    vampire = Vampire.new("Elizabeth Bathory", "purple")

    vampire.drink

    expect(vampire.thirsty?).to eq(false)
  end

  xit "wears a cape that can be any color" do
    vampire = Vampire.new("Elizabeth Bathory", "purple")

    expect(vampire.cape_color).to eq("purple")

    vampire2 = Vampire.new("Count von Count", "black")

    expect(vampire2.cape_color).to eq("black")
  end

  xit "can sleep" do
    vampire = Vampire.new("Elizabeth Bathory", "purple")

    expect(vampire.sleep).to eq(true)
  end

  xit "can wake up" do
    vampire = Vampire.new("Elizabeth Bathory", "purple")

    expect(vampire.wake).to eq(true)
  end

  it "is thirsty when it awakens" do
    vampire = Vampire.new("Elizabeth Bathory", "purple")

    vampire.drink
    vampire.sleep
    vampire.wake

    expect(vampire.thirsty?).to eq(true)
  end
end
