import Foundation
import AnyBase
import WolfBase

/// A utility for converting `Data` objects to and from Base62.
public enum Base62 {
    private static let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    private static let toConverter = try! AnyBase(AnyBase.HEX, alphabet)
    private static let fromConverter = try! AnyBase(alphabet, AnyBase.HEX)
    
    public static func encode(_ data: Data) -> String {
        try! toConverter.convert(data.hex)
    }
    
    public static func decode(_ string: String) -> Data? {
        try? fromConverter.convert(string).hexData
    }
}
