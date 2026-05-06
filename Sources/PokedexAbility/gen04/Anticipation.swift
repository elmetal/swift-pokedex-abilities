//
//  Anticipation.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きけんよち in Japanese.
    ///
    /// The localized name of this ability is `"Anticipation"` in English and
    /// `"きけんよち"` in Japanese.
    ///
    /// Use this value when you need to refer to Anticipation by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.anticipation
    /// ```
    ///
    /// The ability's raw value is `"anticipation"`.
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
