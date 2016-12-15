require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '.new' do
    it 'should not return an error' do
      expect {
        Task.new
      }.not_to raise_error
    end
  end
end
