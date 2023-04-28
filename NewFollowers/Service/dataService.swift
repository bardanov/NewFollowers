//
//  dataService.swift
//  NewFollowers
//
//  Created by Serezha on 25.04.2023.
//

import Foundation

struct dataService {
    
    static func getJsonData() -> [Followers] {
        
        let dataString = Bundle.main.path(forResource: "followers_1", ofType: "json")
        
        guard dataString != nil else {
            return [Followers]()
        }
        
        let url = URL(filePath: dataString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let finalData = try decoder.decode([Followers].self, from: data)
                
                for f in finalData {
                    f.id = UUID()
                    
                    for i in f.string_list_data {
                        i.id = UUID()
                    }
                }
                
                return finalData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        return [Followers]()
    }
    
}
