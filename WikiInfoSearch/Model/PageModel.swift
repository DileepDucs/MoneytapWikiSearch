//
//  PageModel.swift
//  WikiInfoSearch
//
//  Created by Dileep Kumar Jaiswal on 01/10/18.
//  Copyright © 2018 Dileep Kumar Jaiswal. All rights reserved.
//

import UIKit

class PageModel: NSObject {
    var pageid = ""
    var title = ""
    var wDescription = ""
    var imageUrl: String?
    var image: UIImage? = nil
    
    // This function set the corresponding value from server data
    func mapPageModel(dictionary: [String: AnyObject]) {
        self.pageid = dictionary["pageid"] as? String ?? ""
        self.title = dictionary["title"] as? String ?? ""
        self.wDescription = self.getDescription(dictionary: dictionary)
        self.imageUrl = self.getImageURL(dictionary: dictionary)
        
    }
    
    // This method will parse json and return the description string
    func getDescription(dictionary: [String: AnyObject]) -> String {
        if let terms = dictionary["terms"] as? [String: AnyObject] {
            if let description = terms["description"] as? [String] {
                return description.first ?? ""
            }
        }
        return ""
    }
    
    //This method will parse json and return image url string
    func getImageURL(dictionary: [String: AnyObject]) -> String?{
        if let thumbnail = dictionary["thumbnail"] as? [String: AnyObject] {
            if let source = thumbnail["source"] as? String {
                return source
            }
        }
        return nil
    }
    
}
