//
//  SingleValueDecode.swift
//  
//
//  Created by Vincent Kwok on 10/6/22.
//

import Foundation

extension _ETFDecoder: SingleValueDecodingContainer {
    func decodeNil() -> Bool {
        decoded == nil
    }

    func decode(_ type: Float.Type) throws -> Float {
        Float(try decode(Double.self))
    }

    func decode(_ type: Int8.Type) throws -> Int8 {
        Int8(try decode(Int.self))
    }

    func decode(_ type: Int16.Type) throws -> Int16 {
        Int16(try decode(Int.self))
    }

    func decode(_ type: Int32.Type) throws -> Int32 {
        Int32(try decode(Int.self))
    }

    func decode(_ type: UInt.Type) throws -> UInt {
        UInt(try decode(Int.self))
    }

    func decode(_ type: UInt8.Type) throws -> UInt8 {
        UInt8(try decode(Int.self))
    }

    func decode(_ type: UInt16.Type) throws -> UInt16 {
        UInt16(try decode(Int.self))
    }

    func decode(_ type: UInt32.Type) throws -> UInt32 {
        UInt32(try decode(Int.self))
    }

    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        guard let val = decoded as? T else {
            throw DecodingError.typeMismatch(type, .init(codingPath: codingPath, debugDescription: ""))
        }
        return val
    }
}
