//
//  FetchCharactersTest.swift
//  UrlSessionCombineUITests
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import XCTest
import Combine
@testable import UrlSessionCombine

final class FetchCharactersTest: XCTestCase {

    private var sut: FetchCharacters?
    private var list: [Character]?
    
    override func setUpWithError() throws {
        sut = FetchCharacters()
        list = []
    }

    override func tearDownWithError() throws {
        sut = nil
        list = nil
    }

    func testExecute1() throws {
        _ = sut?.execute().sink(receiveCompletion: { error in
            print(error)
            XCTAssertTrue(false)
        }, receiveValue: { list in
            self.list = list
            print(list)
            XCTAssertTrue(true)
        })
        XCTAssertTrue(true)
        
    }


}

