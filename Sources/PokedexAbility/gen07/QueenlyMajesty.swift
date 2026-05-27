//
//  QueenlyMajesty.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as じょおうのいげん in Japanese.
    ///
    /// The localized name of this ability is `"Queenly Majesty"` in English and
    /// `"じょおうのいげん"` in Japanese.
    ///
    /// Use this value when you need to refer to Queenly Majesty by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.queenlyMajesty
    /// ```
    ///
    /// The ability's raw value is `"queenly-majesty"`.
    static let queenlyMajesty = QueenlyMajesty.ability
}

enum QueenlyMajesty: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "queenly-majesty")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じょおうのいげん"
        default:
            "Queenly Majesty"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "相手は自分や味方に先制技を出せない。"
        case (.vii ... .ix, _):
            "Opposing Pokémon cannot use priority moves against the Pokémon or its allies."
        default:
            name(locale: locale)
        }
    }
}
