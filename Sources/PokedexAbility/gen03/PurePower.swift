//
//  PurePower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ヨガパワー in Japanese.
    ///
    /// The localized name of this ability is `"Pure Power"` in English and
    /// `"ヨガパワー"` in Japanese.
    ///
    /// Use this value when you need to refer to Pure Power by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.purePower
    /// ```
    ///
    /// The ability's raw value is `"pure-power"`.
    static let purePower = PurePower.ability
}

enum PurePower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pure-power")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ヨガパワー"
        default:
            "Pure Power"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "こうげきが2倍になる。"
        case (.iii, _):
            "Attack is doubled."
        default:
            name(locale: locale)
        }
    }
}
