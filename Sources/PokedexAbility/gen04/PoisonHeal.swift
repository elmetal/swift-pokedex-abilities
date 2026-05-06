//
//  PoisonHeal.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let poisonHeal = PoisonHeal.ability
}

enum PoisonHeal: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "poison-heal")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ポイズンヒール"
        default:
            "Poison Heal"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "どく・もうどく状態の時、どくのダメージを受けず毎ターン最大HPの1/8回復する。"
        case (.iv, _):
            "If poisoned, the Pokémon restores 1/8 of its maximum HP instead of taking poison damage."
        default:
            name(locale: locale)
        }
    }
}
