//
//  MegaSol.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let megaSol = MegaSol.ability
}

enum MegaSol: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mega-sol")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "メガソーラー"
        default:
            "Mega Sol"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "天気が晴れでなくても、晴れの時のように技を使える。"
        case (.champions, _):
            "The Pokémon can use its moves as if the weather were harsh sunlight."
        default:
            name(locale: locale)
        }
    }
}
