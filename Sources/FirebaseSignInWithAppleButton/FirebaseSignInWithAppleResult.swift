//
//  FirebaseSignInWithAppleResult.swift
//  
//
//  Created by Alex Nagy on 07.01.2021.
//

import Foundation
import FirebaseAuth

public struct FirebaseSignInWithAppleResult {
    public let token: FirebaseSignInWithAppleToken
    public let authDataResult: AuthDataResult
}
