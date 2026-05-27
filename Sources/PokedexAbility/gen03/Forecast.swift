//
//  Forecast.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as てんきや in Japanese.
    ///
    /// The localized name of this ability is `"Forecast"` in English and
    /// `"てんきや"` in Japanese.
    ///
    /// Use this value when you need to refer to Forecast by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.forecast
    /// ```
    ///
    /// The ability's raw value is `"forecast"`.
    static let forecast = Forecast.ability
}

enum Forecast: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "forecast")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てんきや"
        default:
            "Forecast"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "天気に応じてポワルンの姿とタイプが変わる。"
        case (.iii ... .ix, _):
            "Castform changes form and type according to the weather."
        default:
            name(locale: locale)
        }
    }
}
