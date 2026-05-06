//
//  Anticipation.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let anticipation = Anticipation.ability
}

enum Anticipation: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "anticipation")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きけんよち"
        default:
            "Anticipation"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場した時、相手が危険な技を持っていると身震いする。"
        case (.iv, _):
            "When the Pokémon enters battle, it shudders if an opposing Pokémon has a dangerous move."
        default:
            name(locale: locale)
        }
    }
}
