//
//  ComposeLoginUseCase.swift
//  IOSArchitecture
//
//  Created by NguyenSon_MP on 18/09/2023.
//

import Foundation


final class ComposeLoginUseCase: LoginUseCaseOutput {

    var outputs: [LoginUseCaseOutput]
    
    init(outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }
    
    func loginSucceed() {
        outputs.first?.loginSucceed()
    }
    
    func loginFail() {
        outputs.first?.loginFail()
    }
}
