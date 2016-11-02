//
//  SpliderParser.swift
//  Spider
//
//  Created by Fantasy on 16/11/2.
//  Copyright © 2016年 fantasy. All rights reserved.
//

protocol SpliderParser {
    func newUrls(urls : [String]?, node : SpliderNode)
    func loadedContent(content : SpliderResponsable?, node : SpliderNode)
}
