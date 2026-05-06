//
//  WaterVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let waterVeil = WaterVeil.ability
}

enum WaterVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "water-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "みずのベール"
        default:
            "Water Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "やけど状態にならない。"
        case (.iii, _):
            "The Pokémon cannot become burned."
        default:
            name(locale: locale)
        }
    }
}
