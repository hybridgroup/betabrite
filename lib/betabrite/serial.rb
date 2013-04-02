module BetaBrite
  class Serial < Device
    attr_reader :sp
    def initialize(serialport)
      if serialport.is_a?(String)
        initialize_serialport serialport
      else
        @sp = serialport
      end

      super()
    end

    def write_memory!
      characters = 0
      memory_message.split(//).each do |chr|
        sleep 1 if characters < 6
        sp.write chr
        characters += 1
      end
    end

    def write!
      characters = 0
      message.split(//).each do |chr|
        sleep 1 if characters < 6
        sp.write chr
        characters += 1
      end
    end

  private
    def initialize_serialport(serialport)
      @sp = SerialPort.new(serialport, 9600, 8, 1, SerialPort::NONE)
    end
  end
end
