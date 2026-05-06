//
//  Filter.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let filter = Filter.ability
}

enum Filter: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "filter")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "フィルター"
        default:
            "Filter"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "効果抜群の技で受けるダメージが0.75倍になる。"
        case (.iv, _):
            "Damage from super-effective moves is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
