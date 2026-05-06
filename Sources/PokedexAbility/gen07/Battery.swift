//
//  Battery.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let battery = Battery.ability
}

enum Battery: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "battery")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "バッテリー"
        default:
            "Battery"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "味方の特殊技の威力が1.3倍になる。"
        case (.vii, _):
            "Allies' special moves have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
