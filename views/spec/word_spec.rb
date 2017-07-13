require  ('rspec')
  require('word')

  describe(Word) do
    describe('#word') do
      it("returns the name of the word") do
        test_word = Word.new("driver")
        expect(test_word.name()).to(eq("driver"))
      end
    end

    describe('#definition') do
      it("returns definition of word") do
        test_word= Word.new("a person who drives")
        expect(test_word.definition()).to(eq("a person who drives"))
    end
  end

    describe('.all') do
      it("") do
        expect(Word.all()).to(eq([]))
    end
  end

    describe('#save') do
      it("saves all instances of word to an array") do
        test_word= Word.new("driver","a person who drives")
        test_word.save()
        expect(test_word.all()).to(eq([test_word]))
    end
  end

    describe('#id') do
      it("returns id of word") do
        test_word= Word.new("driver","a person who drives")
        expect(test_word.id()).to(eq("1"))
    end
  end
