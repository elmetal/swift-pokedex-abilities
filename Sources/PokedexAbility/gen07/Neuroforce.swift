//
//  Neuroforce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let neuroforce = Neuroforce.ability
}

enum Neuroforce: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "neuroforce")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ブレインフォース"
        default:
            "Neuroforce"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "効果抜群の技で与えるダメージが1.25倍になる。"
        case (.vii, _):
            "Super-effective attacks deal 1.25x damage."
        default:
            name(locale: locale)
        }
    }
}
