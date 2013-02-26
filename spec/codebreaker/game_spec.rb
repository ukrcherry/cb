require 'spec_helper'
require 'spec_helper'

module Codebreaker
  describe Game do

      let(:output) { double('output').as_null_object }
      let(:game) { Game.new(output) }

      describe "#start" do
      
         it "prompts for the first try" do
            output = double('output').as_null_object
            game = Game.new(output)

            output.should_receive(:puts).with('Welcome! Here is your first try:')
            game.start('6789')
         end
      end

      describe "#try" do
        context "there are no matches" do
          it "sends ''" do
            game.start('6789')
            output.should_receive(:puts).with('')
            game.try('2345')
          end
        end

        context "there is 1 number match" do
          it "sends '-'" do
            game.start('6789')
            output.should_receive(:puts).with('-')
            game.try('3456')
          end
        end

        context "there is an exact match!" do
          it "sends '+'" do
            game.start('6789')
            output.should_receive(:puts).with('+')
            game.try('6543')
          end
        end

        context "there are two matches" do
          it "sends '--'" do
            game.start('6789')
            output.should_receive(:puts).with('--')
            game.try('9855')
          end
        end

        context "there is one number match and one exact match" do
            it "sends '+-'" do
               game.start('6789')
               output.should_receive(:puts).with('+-')
               game.try('9732')
            end
        end
      end
    end
end