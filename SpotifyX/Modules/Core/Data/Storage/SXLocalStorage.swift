//
//  SXLocalStorage.swift
//  SpotifyX
//
//  Created by Sourav Singh Rawat on 29/11/22.
//

import Foundation

class SXLocalStorage: SXStorageProtocol {
    
    private let userDefaults = UserDefaults.standard
    
    func exsist(
        key: String
    ) async -> Bool {
        let encodedValue = userDefaults.object(forKey: key)
        
        return encodedValue != nil
    }
    
    func store<T>(
        key: String,
        value: T
    ) async throws -> SXStoreElement<T> where T : Decodable, T : Encodable {
        if await exsist(key: key) {
            throw SXStoreFailure.keyAlreadyExsist
        }
        
        do {
            let encoder = JSONEncoder()
            
            let encodedValue = try encoder.encode(value)
            
            userDefaults.set(value, forKey: key)
            
            let result = (key: key,value: value)
            
            return result
        } catch {
            throw SXStoreFailure.valueNotEncodable
        }
    }
    
    func retrive<T>(
        key: String
    ) async throws -> SXStoreElement<T> where T : Decodable, T : Encodable {
        if !(await exsist(key: key)) {
            throw SXRetriveFailure.keyNotFound
        }
        
        do {
            let data = userDefaults.data(forKey: key)
            
            let decoder = JSONDecoder()
            
            let decodedValue = try decoder.decode(T.self, from: data!)
            
            let result = (key: key,value: decodedValue)
            
            return result
        } catch {
            throw SXRetriveFailure.valueNotDecodable
        }
    }
    
    func update<T>(
        key: String,
        value: T
    ) async throws -> SXStoreElement<T> where T : Decodable, T : Encodable {
        if !(await exsist(key: key)) {
            throw SXUpdateFailure.keyNotFound
        }
        
        do {
            let encoder = JSONEncoder()
            
            let encodedValue = try encoder.encode(value)
            
            userDefaults.set(encodedValue, forKey: key)
            
            let result = (key: key,value: value)
            
            return result
        } catch {
            throw SXUpdateFailure.valueNotEncodable
        }
    }
}
