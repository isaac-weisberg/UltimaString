protocol SetTrait {
    
}

struct Digit: SetTrait {
    
}

protocol Alpha: SetTrait {
    
}

struct AlphaVowel: Alpha {
    
}

struct AlphaConsonant: Alpha {
    
}

struct Character<Trait: SetTrait> {
    let underlying: Swift.Character
    
    init(_ character: Swift.Character) {
        self.underlying = character
    }
}
