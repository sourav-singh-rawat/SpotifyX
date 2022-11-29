//
//  SXStorageProtocol.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 29/11/22.
//

typealias StorableX = Codable

enum SXStoreFailure: Error {
    case unknown
    case keyAlreadyExsist
    case valueNotEncodable
}

enum SXRetriveFailure: Error {
    case unknown
    case keyNotFound
    case valueNotDecodable
}

enum SXUpdateFailure: Error {
    case unknown
    case keyNotFound
    case valueNotEncodable
}

typealias SXStoreElement<T> = (key: String,value: T)

protocol SXStorageProtocol {
    func exsist(
        key: String
    ) async -> Bool
    
    func store<T: StorableX>(
        key: String,
        value: T
    ) async throws -> SXStoreElement<T>
    
    func retrive<T: StorableX>(
        key: String
    ) async throws -> SXStoreElement<T>
    
    func update<T: StorableX>(
        key: String,
        value: T
    ) async throws -> SXStoreElement<T>
}
