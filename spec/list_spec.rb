require File.expand_path(File.dirname(__FILE__) + '/./spec_helper')
require 'lists'
describe "Lists" do
    describe "add_favorites" do
        context "when the user is not signed in" do
            it "should list titles of all public lists" do
            end
        end

        context "when the user is signed in" do
            it "should list titles of all user lists" do
            end

            it "should list titles of all public lists" do
            end
            
            it "should list titles of all favorite lists" do
            end
        end
    end
end