//
//  PokemonGeneration.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

public enum PokemonGeneration: Int, Hashable, Codable, Sendable, Comparable {
    case iii = 3
    case iv = 4
    case v = 5
    case vi = 6
    case vii = 7
    case viii = 8
    case ix = 9
    
    case champions = -1
    
    public static var latest: Self { .ix }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
