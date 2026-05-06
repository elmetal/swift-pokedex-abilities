//
//  SteelySpirit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let steelySpirit = SteelySpirit.ability
}

enum SteelySpirit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "steely-spirit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はがねのせいしん"
        default:
            "Steely Spirit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "自分と味方のはがねタイプの技の威力が1.5倍になる。"
        case (.viii, _):
            "Steel-type moves used by the Pokémon and its allies have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
