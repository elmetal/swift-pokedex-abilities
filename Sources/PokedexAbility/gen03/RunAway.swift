//
//  RunAway.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as にげあし in Japanese.
    ///
    /// The localized name of this ability is `"Run Away"` in English and
    /// `"にげあし"` in Japanese.
    ///
    /// Use this value when you need to refer to Run Away by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.runAway
    /// ```
    ///
    /// The ability's raw value is `"run-away"`.
    static let runAway = RunAway.ability
}

enum RunAway: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "run-away")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "にげあし"
        default:
            "Run Away"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "野生ポケモンとの戦闘から必ず逃げられる。"
        case (.iii ... .ix, _):
            "The Pokémon can always flee from wild battles."
        default:
            name(locale: locale)
        }
    }
}
