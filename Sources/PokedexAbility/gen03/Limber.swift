//
//  Limber.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as じゅうなん in Japanese.
    ///
    /// The localized name of this ability is `"Limber"` in English and
    /// `"じゅうなん"` in Japanese.
    ///
    /// Use this value when you need to refer to Limber by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.limber
    /// ```
    ///
    /// The ability's raw value is `"limber"`.
    static let limber = Limber.ability
}

enum Limber: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "limber")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じゅうなん"
        default:
            "Limber"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "まひ状態にならない。"
        case (.iii ... .ix, _):
            "The Pokémon cannot become paralyzed."
        default:
            name(locale: locale)
        }
    }
}
