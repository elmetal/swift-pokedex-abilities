//
//  Costar.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きょうえん in Japanese.
    ///
    /// The localized name of this ability is `"Costar"` in English and
    /// `"きょうえん"` in Japanese.
    ///
    /// Use this value when you need to refer to Costar by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.costar
    /// ```
    ///
    /// The ability's raw value is `"costar"`.
    static let costar = Costar.ability
}

enum Costar: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "costar")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きょうえん"
        default:
            "Costar"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、味方の能力ランクの変化をコピーする。"
        case (.ix, _):
            "When the Pokémon enters battle, it copies an ally's stat changes."
        default:
            name(locale: locale)
        }
    }
}
