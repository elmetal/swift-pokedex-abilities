//
//  EffectSpore.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let effectSpore = EffectSpore.ability
}

enum EffectSpore: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "effect-spore")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ほうし"
        default:
            "Effect Spore"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "直接攻撃を受けた時、30%の確率で相手をどく・まひ・ねむりのいずれかにする。"
        case (.iii, _):
            "Contact has a 30% chance to inflict poison, paralysis, or sleep on the attacker."
        default:
            name(locale: locale)
        }
    }
}
