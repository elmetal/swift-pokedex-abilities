//
//  HugePower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ちからもち in Japanese.
    ///
    /// The localized name of this ability is `"Huge Power"` in English and
    /// `"ちからもち"` in Japanese.
    ///
    /// Use this value when you need to refer to Huge Power by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.hugePower
    /// ```
    ///
    /// The ability's raw value is `"huge-power"`.
    static let hugePower = HugePower.ability
}

enum HugePower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "huge-power")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちからもち"
        default:
            "Huge Power"
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
