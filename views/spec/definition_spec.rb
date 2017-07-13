require  ('rspec')
  require('definition')

  describe(Definition) do
    describe('#definition') do
      it("returns the definition") do
        test_def = Definition.new("driver")
        expect(test_def.definition()).to(eq("driver"))
      end
    end

    describe('.all') do
      it("") do
        expect(Definition.all()).to(eq([]))
    end
  end

    describe('#save') do
      it("saves all instances of definition to an array") do
        test_def= Definition.new("a person who drives")
        test_def.save()
        expect(test_def.all()).to(eq([test_def]))
    end
  end

    describe('#id') do
      it("returns id of definition") do
        test_word= Definition.new("a person who drives")
        expect(test_def.id()).to(eq("1"))
    end
  end
end
