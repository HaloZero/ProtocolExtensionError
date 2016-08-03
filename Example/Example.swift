import Foundation

public protocol ExampleProtocol {
    var sample: String? { get }
}

// Call nil by default
public extension ExampleProtocol {
    var sample: String? {
        return nil
    }
}

public struct ExampleStruct1: ExampleProtocol {
    public init() {}
}


public struct ExampleStruct2: ExampleProtocol {
    public init() {}
}

// Extensions inside the framework just fine!
extension ExampleStruct2 {
    public var sample: String? {
        return "String"
    }
}