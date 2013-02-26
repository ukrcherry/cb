require 'spec_helper'

module Codebreaker
  describe Checkup do
    describe "#exact_match_count" do
      context "there are no matches" do
        it "returns 0" do
          checkup = Checkup.new("1234", "5555")
          checkup.exact_match_count.should == 0
        end
      end

      context "there is 1 exact match" do
        it "returns 1" do
          checkup = Checkup.new("1234", "1555")
          checkup.exact_match_count.should == 1
        end
      end

      context "there is 1 number match" do
        it "returns 0" do
          checkup = Checkup.new("1234", "2555")
          checkup.exact_match_count.should == 0
        end
      end

      context "there are 1 exact match and 1 number match" do
        it "returns 1" do
          checkup = Checkup.new("1234", "1525")
          checkup.exact_match_count.should == 1
        end
      end
    end

    describe "#number_match_count" do
      context "there are no matches" do
        it "returns 0" do
          checkup = Checkup.new("1234", "5555")
          checkup.number_match_count.should == 0
        end
      end

      context "there is 1 exact match" do
        it "returns 1" do
          checkup = Checkup.new("1234", "1555")
          checkup.number_match_count.should == 0
        end
      end

      context "there is 1 number match" do
        it "returns 0" do
          checkup = Checkup.new("1234", "2555")
          checkup.number_match_count.should == 1
        end
      end

      context "there is 1 exact match and 1 number match" do
        it "returns 1" do
          checkup = Checkup.new("1234", "1525")
          checkup.number_match_count.should == 1
        end
      end

      context "there is 1 exact match duplicated in guess" do
        it "returns 0" do
          checkup = Checkup.new("1234", "1155")
          checkup.number_match_count.should == 0
        end
      end
    end
  end
end
