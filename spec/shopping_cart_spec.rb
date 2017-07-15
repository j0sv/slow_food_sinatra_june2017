require './lib/models/shopping_cart.rb'

describe Shopping_cart do
  it { is_expected.to have_property :orders }

end
