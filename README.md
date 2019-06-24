# UltimaString

06/24 11:54 AM

Now clearly, this is absolutely terrible. In the [./UltimaString/String.swift]() we have the implementation of fixed length strings and it's hideous just how "boilerplaty" this whole idea in pure Swift is. At this moment I am unable to find a way to have an `appending` method implemented only once but so it covers a generic case. It is nice though that the methods' signatures only change in the means of the parameter and return type, but that's just basic syntactical polymorphism and nothing that I didn't know already.

Also, it's very clear that there is no such thing as variable-length Generic type parameter array, requiring me to manually write the implementations for all possible lengths of the strings.