//
//  WindPower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let windPower = WindPower.ability
}

enum WindPower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wind-power")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふうりょくでんき"
        default:
            "Wind Power"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "風の技を受けたり、おいかぜが吹いたりすると充電状態になる。"
        case (.ix, _):
            "When hit by a wind move or Tailwind begins, the Pokémon becomes charged."
        default:
            name(locale: locale)
        }
    }
}
