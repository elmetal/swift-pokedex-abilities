//
//  Sniper.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as スナイパー in Japanese.
    ///
    /// The localized name of this ability is `"Sniper"` in English and
    /// `"スナイパー"` in Japanese.
    ///
    /// Use this value when you need to refer to Sniper by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sniper
    /// ```
    ///
    /// The ability's raw value is `"sniper"`.
    static let sniper = Sniper.ability
}

enum Sniper: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sniper")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スナイパー"
        default:
            "Sniper"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "急所に当たった時のダメージが1.5倍になる。"
        case (.iv, _):
            "Critical hits deal 1.5x more damage."
        default:
            name(locale: locale)
        }
    }
}
