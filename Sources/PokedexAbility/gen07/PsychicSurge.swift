//
//  PsychicSurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as サイコメイカー in Japanese.
    ///
    /// The localized name of this ability is `"Psychic Surge"` in English and
    /// `"サイコメイカー"` in Japanese.
    ///
    /// Use this value when you need to refer to Psychic Surge by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.psychicSurge
    /// ```
    ///
    /// The ability's raw value is `"psychic-surge"`.
    static let psychicSurge = PsychicSurge.ability
}

enum PsychicSurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "psychic-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "サイコメイカー"
        default:
            "Psychic Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "登場した時、場をサイコフィールドにする。"
        case (.vii ... .ix, _):
            "When the Pokémon enters battle, it creates Psychic Terrain."
        default:
            name(locale: locale)
        }
    }
}
