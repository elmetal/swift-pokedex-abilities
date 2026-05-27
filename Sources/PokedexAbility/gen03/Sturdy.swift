//
//  Sturdy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as がんじょう in Japanese.
    ///
    /// The localized name of this ability is `"Sturdy"` in English and
    /// `"がんじょう"` in Japanese.
    ///
    /// Use this value when you need to refer to Sturdy by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sturdy
    /// ```
    ///
    /// The ability's raw value is `"sturdy"`.
    static let sturdy = Sturdy.ability
}

enum Sturdy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sturdy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "がんじょう"
        default:
            "Sturdy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "一撃必殺技を受けない。"
        case (.iii ... .ix, _):
            "One-hit KO moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
