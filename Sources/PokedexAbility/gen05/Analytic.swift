//
//  Analytic.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let analytic = Analytic.ability
}

enum Analytic: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "analytic")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "アナライズ"
        default:
            "Analytic"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "自分が相手より後に行動する時、技の威力が1.3倍になる。"
        case (.v, _):
            "If the Pokémon moves after its target, its move has 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
