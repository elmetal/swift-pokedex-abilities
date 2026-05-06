//
//  WaterAbsorb.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let waterAbsorb = WaterAbsorb.ability
}

enum WaterAbsorb: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "water-absorb")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちょすい"
        default:
            "Water Absorb"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "みずタイプの技を受けると、ダメージを受けず最大HPの1/4回復する。"
        case (.iii, _):
            "Water-type moves heal 1/4 of maximum HP instead of dealing damage."
        default:
            name(locale: locale)
        }
    }
}
