require_relative '../find_and_replace'

RSpec.describe('#find_and_replace') do
    describe 'find_and_replace' do
    it ("rewrites original text replacing cat for dog") do
    expect(find_and_replace("cat dog")).to(eq("Every human has a dog or many dogs. They all live in dogville. Dog name Dogydog likes to play softdogball."))
    end
    it ("rewrites new rewrited text previously replacing dog back to cat") do
    expect(find_and_replace("dog cat")).to(eq("Every human has a cat or many cats. They all live in catville. Cat name Catycat likes to play softcatball."))
    end
end
end