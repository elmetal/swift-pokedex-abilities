//
//  Steelworker.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let steelworker = Steelworker.ability
}

enum Steelworker: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "steelworker")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はがねつかい"
        default:
            "Steelworker"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "はがねタイプの技の威力が1.5倍になる。"
        case (.vii, _):
            "Steel-type moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
