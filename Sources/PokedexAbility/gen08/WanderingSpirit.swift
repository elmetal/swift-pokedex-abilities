//
//  WanderingSpirit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let wanderingSpirit = WanderingSpirit.ability
}

enum WanderingSpirit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wandering-spirit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "さまようたましい"
        default:
            "Wandering Spirit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "直接攻撃を受けた時、相手と特性を入れ替える。"
        case (.viii, _):
            "Contact with the Pokémon swaps Abilities with the attacker."
        default:
            name(locale: locale)
        }
    }
}
