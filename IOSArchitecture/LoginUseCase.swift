//
//  LoginUseCase.swift
//  IOSArchitecture
//
//  Created by NguyenSon_MP on 18/09/2023.
//

import Foundation

protocol LoginUseCaseOutput {
    func loginSucceed()
    func loginFail()
    
}


final class LoginUseCase: LoginUseCaseOutput {
    
    
    private var output: LoginUseCaseOutput
    
    init(output: LoginUseCaseOutput) {
        self.output = output
    }
    
    func loginSucceed() {
        output.loginSucceed()
    }
    
    func loginFail() {
        output.loginFail()
    }
    
    
    func login(username: String, password: String) {
        
    }

}
