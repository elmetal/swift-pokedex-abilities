//
//  InnerFocus.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as せいしんりょく in Japanese.
    ///
    /// The localized name of this ability is `"Inner Focus"` in English and
    /// `"せいしんりょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Inner Focus by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.innerFocus
    /// ```
    ///
    /// The ability's raw value is `"inner-focus"`.
    static let innerFocus = InnerFocus.ability
}

enum InnerFocus: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "inner-focus")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "せいしんりょく"
        default:
            "Inner Focus"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ひるまない。"
        case (.iii, _):
            "The Pokémon does not flinch."
        default:
            name(locale: locale)
        }
    }
}
