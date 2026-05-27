//
//  Libero.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as リベロ in Japanese.
    ///
    /// The localized name of this ability is `"Libero"` in English and
    /// `"リベロ"` in Japanese.
    ///
    /// Use this value when you need to refer to Libero by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.libero
    /// ```
    ///
    /// The ability's raw value is `"libero"`.
    static let libero = Libero.ability
}

enum Libero: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "libero")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "リベロ"
        default:
            "Libero"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "技を使う前に、自分のタイプがその技と同じタイプになる。"
        case (.viii ... .ix, _):
            "Before the Pokémon uses a move, it changes to that move's type."
        default:
            name(locale: locale)
        }
    }
}
