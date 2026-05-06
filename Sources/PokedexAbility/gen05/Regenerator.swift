//
//  Regenerator.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as さいせいりょく in Japanese.
    ///
    /// The localized name of this ability is `"Regenerator"` in English and
    /// `"さいせいりょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Regenerator by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.regenerator
    /// ```
    ///
    /// The ability's raw value is `"regenerator"`.
    static let regenerator = Regenerator.ability
}

enum Regenerator: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "regenerator")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "さいせいりょく"
        default:
            "Regenerator"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "交代すると最大HPの1/3回復する。"
        case (.v, _):
            "When the Pokémon switches out, it restores 1/3 of its maximum HP."
        default:
            name(locale: locale)
        }
    }
}
