//
//  VitalSpirit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as やるき in Japanese.
    ///
    /// The localized name of this ability is `"Vital Spirit"` in English and
    /// `"やるき"` in Japanese.
    ///
    /// Use this value when you need to refer to Vital Spirit by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.vitalSpirit
    /// ```
    ///
    /// The ability's raw value is `"vital-spirit"`.
    static let vitalSpirit = VitalSpirit.ability
}

enum VitalSpirit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "vital-spirit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "やるき"
        default:
            "Vital Spirit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "ねむり状態にならない。"
        case (.iii ... .ix, _):
            "The Pokémon cannot fall asleep."
        default:
            name(locale: locale)
        }
    }
}
