//
//  Frisk.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as おみとおし in Japanese.
    ///
    /// The localized name of this ability is `"Frisk"` in English and
    /// `"おみとおし"` in Japanese.
    ///
    /// Use this value when you need to refer to Frisk by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.frisk
    /// ```
    ///
    /// The ability's raw value is `"frisk"`.
    static let frisk = Frisk.ability
}

enum Frisk: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "frisk")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おみとおし"
        default:
            "Frisk"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場した時、相手の持ち物を見通す。"
        case (.iv, _):
            "When the Pokémon enters battle, it reveals an opposing Pokémon's held item."
        default:
            name(locale: locale)
        }
    }
}
