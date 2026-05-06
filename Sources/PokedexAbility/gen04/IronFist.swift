//
//  IronFist.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let ironFist = IronFist.ability
}

enum IronFist: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "iron-fist")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てつのこぶし"
        default:
            "Iron Fist"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "パンチ系の技の威力が1.2倍になる。"
        case (.iv, _):
            "Punching moves have 1.2x power."
        default:
            name(locale: locale)
        }
    }
}
