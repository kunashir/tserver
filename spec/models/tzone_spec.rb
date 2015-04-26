require 'rails_helper'

RSpec.describe TZone do
	context 'no city' do
		it 'return UTC' do
			expect(TZone.time_in_city()).to eq "UTC: " + Time.now.utc.strftime('%d.%m.%Y %H:%M:%S') + "<br>"
		end
	end

	context "Moscow" do
		it 'return moscow time' do
			expect(TZone.time_in_city("Moscow")).to match Time.now.localtime.strftime('%d.%m.%Y %H:%M:%S')
		end
	end

	context "invalid city" do
		it 'return error msg' do
			expect(TZone.time_in_city("Griazy")).to match "Error: city not found"
		end
	end

	it 'must contain input cities' do
		expect(TZone.time_in_city("Moscow,New York")).to match /^.*Moscow.*New York.*$/
	end
end