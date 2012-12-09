describe FizzBuzz do
  describe '.fizz_buzz_array' do
    let(:fizz_buzz) { FizzBuzz.fizz_buzz_array(max) }

    let(:max) { 100 }

    context "a multiple of 3" do
      let(:multiple_of_3) {
        fizz_buzz.each.with_index(1).select {|_, index|
          index % 3 == 0
        }.map {|element, _| element }
      }

      it "should be 'Fizz'" do
        expect(multiple_of_3).to satisfy {|v| v.all? {|x| /Fizz/ === x } }
      end
    end

    context "a multiple of 5" do
      let(:multiple_of_5) {
        fizz_buzz.each.with_index(1).select {|_, index|
          index % 5 == 0
        }.map {|element, _| element }
      }

      it "should be 'Fizz'" do
        expect(multiple_of_5).to satisfy {|v| v.all? {|x| /Buzz/ === x } }
      end
    end

    context "a multiple of 3 and 5" do
      let(:multiple_of_3_and_5) {
        fizz_buzz.each.with_index(1).select {|_, index|
          index % 15 == 0
        }.map {|element, _| element }
      }

      it "should be 'FizzBuzz'" do
        expect(multiple_of_3_and_5).to satisfy {|v| v.all? {|x| /FizzBuzz/ === x } }
      end
    end

    context "otherwise" do
      let(:otherwise) {
        fizz_buzz.each.with_index(1).select {|_, index|
          !(index % 3 == 0 and index % 5 == 0)
        }.map {|element, _| element }
      }

      it "should be a number" do
        expect(otherwise).to satisfy {|v| v.all? {|x| /[0-9]*/ === x } }
      end
    end
  end
end
