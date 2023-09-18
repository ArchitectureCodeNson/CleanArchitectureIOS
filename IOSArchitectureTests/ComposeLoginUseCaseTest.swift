//
//  ComposeLoginUseCaseTest.swift
//  IOSArchitectureTests
//
//  Created by NguyenSon_MP on 18/09/2023.
//

import XCTest
@testable import IOSArchitecture
final class ComposeLoginUseCaseTest: XCTestCase {
    func test_composeZero() {
        let compose = ComposeLoginUseCase(outputs: [])
        compose.loginFail()
        compose.loginSucceed()
    }
    
    func test_composeOutput_succeed() {
        let output = LoginUseCaseSpy()
        let sut = ComposeLoginUseCase(outputs: [output])
        output.loginSucceed()
        
        XCTAssertEqual(output.loginSCount, 1)
    }
    
    func test_composeOutput_fail() {
        let output = LoginUseCaseSpy()
        let sut = ComposeLoginUseCase(outputs: [output])
        output.loginSucceed()
        
        XCTAssertEqual(output.loginFCount, 1)
    }
    
    //MARK: helper
    
    private class LoginUseCaseSpy: LoginUseCaseOutput {
        
        var loginSCount = 0
        var loginFCount = 0
        func loginSucceed() {
            loginSCount+=1
        }
        
        func loginFail() {
            loginFCount+=1
        }

    }
    
    
}
