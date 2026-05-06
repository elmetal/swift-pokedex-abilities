//
//  PoisonPoint.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let poisonPoint = PoisonPoint.ability
}

enum PoisonPoint: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "poison-point")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくのトゲ"
        default:
            "Poison Point"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "直接攻撃を受けた時、30%の確率で相手をどく状態にする。"
        case (.iii, _):
            "Contact with the Pokémon has a 30% chance to poison the attacker."
        default:
            name(locale: locale)
        }
    }
}
