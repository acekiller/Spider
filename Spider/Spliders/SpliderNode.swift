//
//  SpliderNode.swift
//  Spider
//
//  Created by Fantasy on 16/11/2.
//  Copyright © 2016年 fantasy. All rights reserved.
//

import Cocoa

class SpliderNode {
    
    private let mainQueue = DispatchQueue.main
    private let asyncQueue = DispatchQueue(label: "com.goappbox.splider")
    var content : String?
    var link_urls = [String]()
    
    private var _url : String
    var url : String {
        set {
           _url = newValue
        }
        get {
            return _url
        }
    }
    
    
    private var _delegate : SpliderParser
    var delegate : SpliderParser {
        set {
            _delegate = newValue
        }
        
        get {
            return _delegate
        }
    }
    
    init?(url : String, delegate : SpliderParser) {
        _url = url
        _delegate = delegate
    }
    
    func startParser() {
        asyncQueue.async {
            
        }
    }
    
    func parserFinish() {
        mainQueue.async {
            self.delegate.loadedContent(content: self.content, node: self)
            self.delegate.newUrls(urls: self.link_urls, node: self)
        }
    }
    
    func cancelParser() {
        //
    }
}

extension String : SpliderResponsable {
    func toString() -> String {
        return self
    }
}
