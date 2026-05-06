//
//  GorillaTactics.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ごりむちゅう in Japanese.
    ///
    /// The localized name of this ability is `"Gorilla Tactics"` in English and
    /// `"ごりむちゅう"` in Japanese.
    ///
    /// Use this value when you need to refer to Gorilla Tactics by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.gorillaTactics
    /// ```
    ///
    /// The ability's raw value is `"gorilla-tactics"`.
    static let gorillaTactics = GorillaTactics.ability
}

enum GorillaTactics: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "gorilla-tactics")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ごりむちゅう"
        default:
            "Gorilla Tactics"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "こうげきが1.5倍になるが、最初に選んだ技しか出せなくなる。"
        case (.viii, _):
            "Attack is 1.5x, but the Pokémon can use only the first move it selected."
        default:
            name(locale: locale)
        }
    }
}
