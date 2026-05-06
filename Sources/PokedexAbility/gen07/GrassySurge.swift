//
//  GrassySurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as グラスメイカー in Japanese.
    ///
    /// The localized name of this ability is `"Grassy Surge"` in English and
    /// `"グラスメイカー"` in Japanese.
    ///
    /// Use this value when you need to refer to Grassy Surge by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.grassySurge
    /// ```
    ///
    /// The ability's raw value is `"grassy-surge"`.
    static let grassySurge = GrassySurge.ability
}

enum GrassySurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "grassy-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "グラスメイカー"
        default:
            "Grassy Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "登場した時、場をグラスフィールドにする。"
        case (.vii, _):
            "When the Pokémon enters battle, it creates Grassy Terrain."
        default:
            name(locale: locale)
        }
    }
}
