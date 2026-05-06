//
//  BeadsOfRuin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as わざわいのたま in Japanese.
    ///
    /// The localized name of this ability is `"Beads of Ruin"` in English and
    /// `"わざわいのたま"` in Japanese.
    ///
    /// Use this value when you need to refer to Beads of Ruin by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.beadsOfRuin
    /// ```
    ///
    /// The ability's raw value is `"beads-of-ruin"`.
    static let beadsOfRuin = BeadsOfRuin.ability
}

enum BeadsOfRuin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "beads-of-ruin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わざわいのたま"
        default:
            "Beads of Ruin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分以外のポケモンのとくぼうが0.75倍になる。"
        case (.ix, _):
            "The Special Defense of all other Pokémon is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
