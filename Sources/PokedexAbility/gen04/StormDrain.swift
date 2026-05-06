//
//  StormDrain.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let stormDrain = StormDrain.ability
}

enum StormDrain: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "storm-drain")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "よびみず"
        default:
            "Storm Drain"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "ダブルバトルで、単体を対象にするみずタイプの技を自分に引き寄せる。"
        case (.iv, _):
            "In Double Battles, single-target Water-type moves are redirected to the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
