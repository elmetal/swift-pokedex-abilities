//
//  Schooling.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let schooling = Schooling.ability
}

enum Schooling: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "schooling")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぎょぐん"
        default:
            "Schooling"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "ヨワシのレベルと残りHPに応じて姿が変わる。"
        case (.vii, _):
            "Wishiwashi changes form depending on its level and remaining HP."
        default:
            name(locale: locale)
        }
    }
}
