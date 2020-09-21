//
//  1108. Defanging an IP Address.swift
//  
//  https://leetcode.com/problems/defanging-an-ip-address/
//  Created by Linda on 2020/09/21.
//

import Foundation

func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}
