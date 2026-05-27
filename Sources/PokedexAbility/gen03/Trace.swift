//
//  Trace.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as トレース in Japanese.
    ///
    /// The localized name of this ability is `"Trace"` in English and
    /// `"トレース"` in Japanese.
    ///
    /// Use this value when you need to refer to Trace by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.trace
    /// ```
    ///
    /// The ability's raw value is `"trace"`.
    static let trace = Trace.ability
}

enum Trace: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "trace")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "トレース"
        default:
            "Trace"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "登場した時、相手の特性をコピーする。"
        case (.iii ... .ix, _):
            "When the Pokémon enters battle, it copies an opposing Pokémon's Ability."
        default:
            name(locale: locale)
        }
    }
}
