//
//  VoltAbsorb.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let voltAbsorb = VoltAbsorb.ability
}

enum VoltAbsorb: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "volt-absorb")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちくでん"
        default:
            "Volt Absorb"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "でんきタイプの技を受けると、ダメージを受けず最大HPの1/4回復する。"
        case (.iii, _):
            "Electric-type moves heal 1/4 of maximum HP instead of dealing damage."
        default:
            name(locale: locale)
        }
    }
}
