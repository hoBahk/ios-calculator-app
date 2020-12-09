//
//  File.swift
//  Calculator
//
//  Created by Yeon on 2020/12/09.
//

protocol BinaryCalculable {
    func and(first: String, second: String) throws -> String
    func or(first: String, second: String) throws -> String
    func xor(first: String, second: String) throws -> String
    func nor(first: String, second: String) throws -> String
    func not(value: String) throws -> String
    func nand(first: String, second: String) throws -> String
    func rightShift() throws
    func leftShift() throws
}
