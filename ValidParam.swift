//
//  ValidParam.swift
//  Practice
//
//  Created by Nouman Pervez on 24/09/26.
//

import Playgrounds

#Playground {
    
    func validParenthesis(_ parenthesis: String) -> Bool {
        
        var characters = [Character]()
        var matchingChar : [Character: Character] =  [")":"(", ">":"<", "]":"[", "}":"{"]
        
        for obj in parenthesis {
            if obj == "(" || obj == "<" || obj == "[" || obj == "{" {
                characters.append(obj)
            }
            else if obj == ")" || obj == ">" || obj == "]" || obj == "}" {
                if characters.isEmpty || characters.last != matchingChar[obj]  {
                    return false
                }
                characters.removeLast()
            }
        }
        return characters.isEmpty
    }
    
    let a = validParenthesis("()[]<>")

}
