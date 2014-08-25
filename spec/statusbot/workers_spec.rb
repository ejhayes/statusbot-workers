require 'spec_helper'

describe Statusbot::Workers do
  it 'has a version number' do
    expect(Statusbot::Workers::VERSION).not_to be nil
  end

  describe :connect do
    before :each do
      Statusbot::Workers.disconnect
    end
    
    describe :happy do
      describe 'connects to the database' do
        it 'connects to the models' do
          Statusbot::Api.should_receive(:connect)

          Statusbot::Workers.connect
        end
      end
    end

    describe :sad do
      describe 'cannot connect to the database' do
        it 'raises a DatabaseConnectionError' do
          Statusbot::Api.should_receive(:connect) do
            raise 'some error'
          end

          expect { 
            Statusbot::Workers.connect
          }.to raise_error Statusbot::Workers::DatabaseConnectionError
        end
      end
    end
  end

end
