//
//  Scrappy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きもったま in Japanese.
    ///
    /// The localized name of this ability is `"Scrappy"` in English and
    /// `"きもったま"` in Japanese.
    ///
    /// Use this value when you need to refer to Scrappy by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.scrappy
    /// ```
    ///
    /// The ability's raw value is `"scrappy"`.
    static let scrappy = Scrappy.ability
}

enum Scrappy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "scrappy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きもったま"
        default:
            "Scrappy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "ノーマル・かくとうタイプの技がゴーストタイプに当たる。"
        case (.iv ... .ix, _):
            "Normal- and Fighting-type moves can hit Ghost-type Pokémon."
        default:
            name(locale: locale)
        }
    }
}
