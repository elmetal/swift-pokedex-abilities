//
//  SnowWarning.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ゆきふらし in Japanese.
    ///
    /// The localized name of this ability is `"Snow Warning"` in English and
    /// `"ゆきふらし"` in Japanese.
    ///
    /// Use this value when you need to refer to Snow Warning by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.snowWarning
    /// ```
    ///
    /// The ability's raw value is `"snow-warning"`.
    static let snowWarning = SnowWarning.ability
}

enum SnowWarning: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "snow-warning")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ゆきふらし"
        default:
            "Snow Warning"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "登場した時、天気を永続するあられにする。"
        case (.iv ... .ix, _):
            "When the Pokémon enters battle, it makes hail continue indefinitely."
        default:
            name(locale: locale)
        }
    }
}
