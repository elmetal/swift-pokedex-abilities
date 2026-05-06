//
//  ShieldDust.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let shieldDust = ShieldDust.ability
}

enum ShieldDust: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shield-dust")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "りんぷん"
        default:
            "Shield Dust"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "攻撃技の追加効果を受けない。"
        case (.iii, _):
            "Additional effects of damaging moves are blocked."
        default:
            name(locale: locale)
        }
    }
}
