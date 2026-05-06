//
//  RockHead.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let rockHead = RockHead.ability
}

enum RockHead: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rock-head")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いしあたま"
        default:
            "Rock Head"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "自分の技の反動ダメージを受けない。"
        case (.iii, _):
            "The Pokémon does not take recoil damage from its moves."
        default:
            name(locale: locale)
        }
    }
}
