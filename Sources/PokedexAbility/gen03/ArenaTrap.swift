//
//  ArenaTrap.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ありじごく in Japanese.
    ///
    /// The localized name of this ability is `"Arena Trap"` in English and
    /// `"ありじごく"` in Japanese.
    ///
    /// Use this value when you need to refer to Arena Trap by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.arenaTrap
    /// ```
    ///
    /// The ability's raw value is `"arena-trap"`.
    static let arenaTrap = ArenaTrap.ability
}

enum ArenaTrap: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "arena-trap")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ありじごく"
        default:
            "Arena Trap"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "地面にいる相手は逃げたり交代したりできない。"
        case (.iii, _):
            "Grounded opposing Pokémon cannot flee or switch out."
        default:
            name(locale: locale)
        }
    }
}
