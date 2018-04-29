//
//  main.swift
//  AlamofireTest
//
//  Created by Andy Crow on 29/04/2018.
//  Copyright © 2018 Andy Crow. All rights reserved.
//

import Foundation


func complete(_: Data?, _: URLResponse?, _: Error?) -> Void
{
    print("something happening")
}


URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

let yahooURLString = "http://feeds.finance.yahoo.com/rss/2.0/headline?s=yhoo&region=US&lang=en-US"
let yahooRSSURL: URL = URL(string: yahooURLString)!
var request = URLRequest(url: yahooRSSURL)
request.httpMethod = "GET"
let sessionConfig = URLSessionConfiguration.default
let session = URLSession(configuration: sessionConfig)


var responsedata = "";

let task = session.dataTask(with: request,completionHandler: complete)
NSLog("Task state:")
NSLog(task.state.rawValue.description)

print("responsedata:")
NSLog(responsedata)

