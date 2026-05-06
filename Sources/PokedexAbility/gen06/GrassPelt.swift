//
//  GrassPelt.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let grassPelt = GrassPelt.ability
}

enum GrassPelt: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "grass-pelt")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "くさのけがわ"
        default:
            "Grass Pelt"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "グラスフィールドの時、ぼうぎょが1.5倍になる。"
        case (.vi, _):
            "During Grassy Terrain, Defense is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
