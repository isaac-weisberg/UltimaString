struct Character<Trait: SetTrait> {
    let underlying: Swift.Character
    
    init(_ character: Swift.Character) {
        self.underlying = character
    }
}
