//
//  FlareBoost.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ねつぼうそう in Japanese.
    ///
    /// The localized name of this ability is `"Flare Boost"` in English and
    /// `"ねつぼうそう"` in Japanese.
    ///
    /// Use this value when you need to refer to Flare Boost by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.flareBoost
    /// ```
    ///
    /// The ability's raw value is `"flare-boost"`.
    static let flareBoost = FlareBoost.ability
}

enum FlareBoost: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "flare-boost")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ねつぼうそう"
        default:
            "Flare Boost"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "やけど状態の時、とくこうが1.5倍になる。"
        case (.v, _):
            "When burned, Special Attack is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
