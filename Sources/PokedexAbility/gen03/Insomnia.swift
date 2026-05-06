//
//  Insomnia.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふみん in Japanese.
    ///
    /// The localized name of this ability is `"Insomnia"` in English and
    /// `"ふみん"` in Japanese.
    ///
    /// Use this value when you need to refer to Insomnia by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.insomnia
    /// ```
    ///
    /// The ability's raw value is `"insomnia"`.
    static let insomnia = Insomnia.ability
}

enum Insomnia: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "insomnia")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふみん"
        default:
            "Insomnia"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ねむり状態にならない。"
        case (.iii, _):
            "The Pokémon cannot fall asleep."
        default:
            name(locale: locale)
        }
    }
}
