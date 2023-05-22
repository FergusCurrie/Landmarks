//
//  NidekData.swift
//  Landmarks
//
//  Created by fergus on 21/05/23.
//

import Foundation

/*
 
 Generic functions, File opening safely, JSON,
 
 */

var landmarks: [Landmark] = load("landmarkData.json")


/*
 
 so T in this example is the arry of Landmark type.
 the json decoder converts from json into array of Landmark
 
 */
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}


