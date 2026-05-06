//
//  Hospitality.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let hospitality = Hospitality.ability
}

enum Hospitality: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hospitality")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おもてなし"
        default:
            "Hospitality"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、味方のHPを回復する。"
        case (.ix, _):
            "When the Pokémon enters battle, it restores an ally's HP."
        default:
            name(locale: locale)
        }
    }
}
