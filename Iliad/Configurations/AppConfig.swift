//
//  AppConfig.swift
//  My-Simple-Instagram
//
//  Created by Luigi Aiello on 30/10/17.
//  Copyright © 2017 Luigi Aiello. All rights reserved.
//

import Foundation
import UIKit

class AppConfig {
    
    //MARK:- Singleton instance
    static let shared = AppConfig()
    
    //MARK:- Properties
    var apiBaseURL: String {
        return AppConfig.webserviceConfiguration.urlString
    }
    
    var target: DefaultConfiguration {
        return AppConfig.webserviceConfiguration
    }
}

enum DefaultConfiguration: String {
    case development = "Develop"
    case staging = "Staging"
    case production = "Production"
    
    init?(rawValue: String) {
        switch rawValue {
        case DefaultConfiguration.development.rawValue:
            self = .development
        case DefaultConfiguration.staging.rawValue:
            self = .staging
        case DefaultConfiguration.production.rawValue:
            self = .production
        default:
            return nil
        }
    }
    
    var urlString: String {
        switch self {
        case .development:
            return "https://localhost:1331"
        case .staging:
            return ""
        case .production:
            return ""
        }
    }
}