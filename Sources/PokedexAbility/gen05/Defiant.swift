//
//  Defiant.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as まけんき in Japanese.
    ///
    /// The localized name of this ability is `"Defiant"` in English and
    /// `"まけんき"` in Japanese.
    ///
    /// Use this value when you need to refer to Defiant by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.defiant
    /// ```
    ///
    /// The ability's raw value is `"defiant"`.
    static let defiant = Defiant.ability
}

enum Defiant: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "defiant")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "まけんき"
        default:
            "Defiant"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "相手に能力を下げられた時、こうげきが2段階上がる。"
        case (.v, _):
            "When another Pokémon lowers one of this Pokémon's stats, Attack rises by two stages."
        default:
            name(locale: locale)
        }
    }
}
