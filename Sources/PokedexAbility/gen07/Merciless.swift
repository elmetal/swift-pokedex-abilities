//
//  Merciless.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ひとでなし in Japanese.
    ///
    /// The localized name of this ability is `"Merciless"` in English and
    /// `"ひとでなし"` in Japanese.
    ///
    /// Use this value when you need to refer to Merciless by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.merciless
    /// ```
    ///
    /// The ability's raw value is `"merciless"`.
    static let merciless = Merciless.ability
}

enum Merciless: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "merciless")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ひとでなし"
        default:
            "Merciless"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "どく状態の相手に攻撃すると必ず急所に当たる。"
        case (.vii, _):
            "Attacks against poisoned targets always become critical hits."
        default:
            name(locale: locale)
        }
    }
}
