//
//  RainDish.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as あめうけざら in Japanese.
    ///
    /// The localized name of this ability is `"Rain Dish"` in English and
    /// `"あめうけざら"` in Japanese.
    ///
    /// Use this value when you need to refer to Rain Dish by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.rainDish
    /// ```
    ///
    /// The ability's raw value is `"rain-dish"`.
    static let rainDish = RainDish.ability
}

enum RainDish: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rain-dish")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あめうけざら"
        default:
            "Rain Dish"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "雨の時、毎ターン終了時に最大HPの1/16回復する。"
        case (.iii ... .ix, _):
            "During rain, 1/16 of maximum HP is restored at the end of each turn."
        default:
            name(locale: locale)
        }
    }
}
