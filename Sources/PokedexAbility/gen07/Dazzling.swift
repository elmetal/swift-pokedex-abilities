//
//  Dazzling.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ビビッドボディ in Japanese.
    ///
    /// The localized name of this ability is `"Dazzling"` in English and
    /// `"ビビッドボディ"` in Japanese.
    ///
    /// Use this value when you need to refer to Dazzling by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.dazzling
    /// ```
    ///
    /// The ability's raw value is `"dazzling"`.
    static let dazzling = Dazzling.ability
}

enum Dazzling: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dazzling")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ビビッドボディ"
        default:
            "Dazzling"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "相手は自分や味方に先制技を出せない。"
        case (.vii, _):
            "Opposing Pokémon cannot use priority moves against the Pokémon or its allies."
        default:
            name(locale: locale)
        }
    }
}
