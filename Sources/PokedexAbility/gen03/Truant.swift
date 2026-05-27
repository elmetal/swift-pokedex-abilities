//
//  Truant.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as なまけ in Japanese.
    ///
    /// The localized name of this ability is `"Truant"` in English and
    /// `"なまけ"` in Japanese.
    ///
    /// Use this value when you need to refer to Truant by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.truant
    /// ```
    ///
    /// The ability's raw value is `"truant"`.
    static let truant = Truant.ability
}

enum Truant: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "truant")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "なまけ"
        default:
            "Truant"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "2ターンに1回しか行動できない。"
        case (.iii ... .ix, _):
            "The Pokémon can act only every other turn."
        default:
            name(locale: locale)
        }
    }
}
