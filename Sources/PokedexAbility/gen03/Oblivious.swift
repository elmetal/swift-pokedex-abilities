//
//  Oblivious.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as どんかん in Japanese.
    ///
    /// The localized name of this ability is `"Oblivious"` in English and
    /// `"どんかん"` in Japanese.
    ///
    /// Use this value when you need to refer to Oblivious by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.oblivious
    /// ```
    ///
    /// The ability's raw value is `"oblivious"`.
    static let oblivious = Oblivious.ability
}

enum Oblivious: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "oblivious")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どんかん"
        default:
            "Oblivious"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "メロメロ状態にならない。"
        case (.iii, _):
            "The Pokémon cannot become infatuated."
        default:
            name(locale: locale)
        }
    }
}
