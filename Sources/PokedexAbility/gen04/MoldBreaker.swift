//
//  MoldBreaker.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かたやぶり in Japanese.
    ///
    /// The localized name of this ability is `"Mold Breaker"` in English and
    /// `"かたやぶり"` in Japanese.
    ///
    /// Use this value when you need to refer to Mold Breaker by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.moldBreaker
    /// ```
    ///
    /// The ability's raw value is `"mold-breaker"`.
    static let moldBreaker = MoldBreaker.ability
}

enum MoldBreaker: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mold-breaker")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かたやぶり"
        default:
            "Mold Breaker"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "攻撃する時、相手の特性の影響を受けずに技を出せる。"
        case (.iv, _):
            "The Pokémon's moves ignore the target's Ability when attacking."
        default:
            name(locale: locale)
        }
    }
}
