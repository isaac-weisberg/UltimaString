struct String1<First: SetTrait> {
    let first: Character<First>
    
    init(_ first: Character<First>) {
        self.first = first
    }
}

struct String2<First: SetTrait, Second: SetTrait> {
    let first: Character<First>
    let second: Character<Second>
    
    init(_ first: Character<First>, _ second: Character<Second>) {
        self.first = first
        self.second = second
    }
}

struct String3<First: SetTrait, Second: SetTrait, Third: SetTrait> {
    let first: Character<First>
    let second: Character<Second>
    let third: Character<Third>
    
    init(_ first: Character<First>, _ second: Character<Second>, _ third: Character<Third>) {
        self.first = first
        self.second = second
        self.third = third
    }
}

struct String4<First: SetTrait, Second: SetTrait, Third: SetTrait, Fourth: SetTrait> {
    let first: Character<First>
    let second: Character<Second>
    let third: Character<Third>
    let fourth: Character<Fourth>
    
    init(_ first: Character<First>, _ second: Character<Second>, _ third: Character<Third>, _ fourth: Character<Fourth>) {
        self.first = first
        self.second = second
        self.third = third
        self.fourth = fourth
    }
}

let sample = String2(.U, .two)

extension String2 {
    func appending<Third: SetTrait>(_ string: String1<Third>) -> String3<First, Second, Third> {
        return String3(first, second, string.first)
    }
    
    func appending<Third: SetTrait, Fourth: SetTrait>(_ string: String2<Third, Fourth>) -> String4<First, Second, Third, Fourth> {
        return String4(first, second, string.first, string.second)
    }
}

let new = sample.appending(String2(.O, .A))
