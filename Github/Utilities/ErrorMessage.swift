//
//  ErrorMessage.swift
//  Github
//
//  Created by Konstantin Skrypak on 23.01.2024.
//

import Foundation

enum GFError: String, Error {
	case invalidUsername = "Invalid username"
	case unableToComplete = "Unable to complete"
	case invalidResponse = "Invalid response"
	case invalidData = "Invalid data"
}
