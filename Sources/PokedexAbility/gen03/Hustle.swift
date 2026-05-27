//
//  Hustle.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はりきり in Japanese.
    ///
    /// The localized name of this ability is `"Hustle"` in English and
    /// `"はりきり"` in Japanese.
    ///
    /// Use this value when you need to refer to Hustle by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.hustle
    /// ```
    ///
    /// The ability's raw value is `"hustle"`.
    static let hustle = Hustle.ability
}

enum Hustle: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hustle")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はりきり"
        default:
            "Hustle"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "こうげきが1.5倍になるが、物理技の命中率が0.8倍になる。"
        case (.iii ... .ix, _):
            "Attack is 1.5x, but physical moves' accuracy is 0.8x."
        default:
            name(locale: locale)
        }
    }
}
