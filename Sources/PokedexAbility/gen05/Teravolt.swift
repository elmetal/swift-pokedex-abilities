//
//  Teravolt.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let teravolt = Teravolt.ability
}

enum Teravolt: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "teravolt")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "テラボルテージ"
        default:
            "Teravolt"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "攻撃する時、相手の特性の影響を受けずに技を出せる。"
        case (.v, _):
            "The Pokémon's moves ignore the target's Ability when attacking."
        default:
            name(locale: locale)
        }
    }
}
