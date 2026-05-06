//
//  Steadfast.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let steadfast = Steadfast.ability
}

enum Steadfast: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "steadfast")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふくつのこころ"
        default:
            "Steadfast"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "ひるむと、すばやさが1段階上がる。"
        case (.iv, _):
            "When the Pokémon flinches, Speed rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
