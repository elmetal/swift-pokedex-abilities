//
//  TintedLens.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let tintedLens = TintedLens.ability
}

enum TintedLens: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tinted-lens")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いろめがね"
        default:
            "Tinted Lens"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "効果がいまひとつの技で与えるダメージが2倍になる。"
        case (.iv, _):
            "Not very effective moves deal double damage."
        default:
            name(locale: locale)
        }
    }
}
