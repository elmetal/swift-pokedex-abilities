//
//  Reckless.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すてみ in Japanese.
    ///
    /// The localized name of this ability is `"Reckless"` in English and
    /// `"すてみ"` in Japanese.
    ///
    /// Use this value when you need to refer to Reckless by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.reckless
    /// ```
    ///
    /// The ability's raw value is `"reckless"`.
    static let reckless = Reckless.ability
}

enum Reckless: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "reckless")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すてみ"
        default:
            "Reckless"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "反動でダメージを受ける技や外すとダメージを受ける技の威力が1.2倍になる。"
        case (.iv ... .ix, _):
            "Moves with recoil or crash damage have 1.2x power."
        default:
            name(locale: locale)
        }
    }
}
