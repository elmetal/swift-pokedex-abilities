//
//  WonderGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let wonderGuard = WonderGuard.ability
}

enum WonderGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wonder-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふしぎなまもり"
        default:
            "Wonder Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "効果抜群の攻撃技以外ではダメージを受けない。"
        case (.iii, _):
            "Only super-effective damaging moves can hit the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
