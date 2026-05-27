//
//  MistySurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ミストメイカー in Japanese.
    ///
    /// The localized name of this ability is `"Misty Surge"` in English and
    /// `"ミストメイカー"` in Japanese.
    ///
    /// Use this value when you need to refer to Misty Surge by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.mistySurge
    /// ```
    ///
    /// The ability's raw value is `"misty-surge"`.
    static let mistySurge = MistySurge.ability
}

enum MistySurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "misty-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ミストメイカー"
        default:
            "Misty Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "登場した時、場をミストフィールドにする。"
        case (.vii ... .ix, _):
            "When the Pokémon enters battle, it creates Misty Terrain."
        default:
            name(locale: locale)
        }
    }
}
