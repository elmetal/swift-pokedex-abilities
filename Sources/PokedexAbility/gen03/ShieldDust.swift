//
//  ShieldDust.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as りんぷん in Japanese.
    ///
    /// The localized name of this ability is `"Shield Dust"` in English and
    /// `"りんぷん"` in Japanese.
    ///
    /// Use this value when you need to refer to Shield Dust by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.shieldDust
    /// ```
    ///
    /// The ability's raw value is `"shield-dust"`.
    static let shieldDust = ShieldDust.ability
}

enum ShieldDust: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shield-dust")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "りんぷん"
        default:
            "Shield Dust"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "攻撃技の追加効果を受けない。"
        case (.iii, _):
            "Additional effects of damaging moves are blocked."
        default:
            name(locale: locale)
        }
    }
}
