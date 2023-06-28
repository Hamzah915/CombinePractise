//
//  NetworkError.swift
//  CombinePractise
//
//  Created by Hamzah Azam on 28/06/2023.
//

import Foundation

enum NetworkError: Error{
    
    case invalidURL
    case dataNotFound
    case parsingError
    case responseError
    
}

extension NetworkError: LocalizedError{
    
    var errorDescription: String?{
        
        switch self{
            
        case .invalidURL:
            return NSLocalizedString("API endpoint is invalid", comment: "Invalid URL")
        case .dataNotFound:
            return NSLocalizedString("Failed to get data from API", comment: "Data not found")
        case .parsingError:
            return NSLocalizedString("Failed to parse data from API", comment: "Parsing Error")
        case .responseError:
            return NSLocalizedString("Invalid response from API", comment: "Response error")
        }
        
    }
    
}
