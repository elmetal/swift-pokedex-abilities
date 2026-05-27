//
//  Teravolt.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as テラボルテージ in Japanese.
    ///
    /// The localized name of this ability is `"Teravolt"` in English and
    /// `"テラボルテージ"` in Japanese.
    ///
    /// Use this value when you need to refer to Teravolt by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.teravolt
    /// ```
    ///
    /// The ability's raw value is `"teravolt"`.
    static let teravolt = Teravolt.ability
}

enum Teravolt: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "teravolt")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "テラボルテージ"
        default:
            "Teravolt"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "攻撃する時、相手の特性の影響を受けずに技を出せる。"
        case (.v ... .ix, _):
            "The Pokémon's moves ignore the target's Ability when attacking."
        default:
            name(locale: locale)
        }
    }
}
