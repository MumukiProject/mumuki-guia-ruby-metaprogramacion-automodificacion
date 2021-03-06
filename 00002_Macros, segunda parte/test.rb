describe "ensure_no_override" do

  it "falla si el metodo ya existia" do
    class Foo
      def foo
      end
    end
    expect { class Foo; ensure_no_override :foo; end }.to raise_error NameError
  end

  it "no falla si el metodo no existia" do
    class Foo
      def foo
      end
    end
    class Foo; ensure_no_override :bar; end
  end

  it "no falla si la clase no existia" do
    class Bar; ensure_no_override :bar; end
  end

  it "lo entienden los modulos" do
    expect(Module.respond_to? :ensure_no_override).to be true
  end
end
