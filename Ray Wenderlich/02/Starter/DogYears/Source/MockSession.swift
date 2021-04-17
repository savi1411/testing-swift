//
//  MockSession.swift
//  DogYears
//
//  Created by Carlos Alberto Savi on 15/04/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import Foundation

class MockSession: URLSessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        completionHandler(Data(), nil, nil)
        return MockDataTask()
    }
}
