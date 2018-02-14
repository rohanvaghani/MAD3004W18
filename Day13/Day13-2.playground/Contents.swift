//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Tutorial: Codable {
    let title: String
    let author: String
    let editor: String
    let type: String
    let publishDate: Date
    
    init(title: String, author: String, editor: String, type: String, publishDate: Date) {
        self.title = title
        self.author = author
        self.editor = editor
        self.type = type
        self.publishDate = publishDate
    }
}

let tutorial = Tutorial(title: "What's New in Swift 4?", author: "Cosmin Pupaza", editor: "Simon Ng", type: "Swift", publishDate: Date())

let encoder = JSONEncoder()
let data = try encoder.encode(tutorial)
let jsonString = String(data: data, encoding: .utf8)

print(jsonString ?? "")

let decoder = JSONDecoder()
let article = try decoder.decode(Tutorial.self, from: data)
let info = "\(article.title) \(article.author) \(article.editor) \(article.type) \(article.publishDate)"


