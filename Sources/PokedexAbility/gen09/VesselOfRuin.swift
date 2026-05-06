//
//  VesselOfRuin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as わざわいのうつわ in Japanese.
    ///
    /// The localized name of this ability is `"Vessel of Ruin"` in English and
    /// `"わざわいのうつわ"` in Japanese.
    ///
    /// Use this value when you need to refer to Vessel of Ruin by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.vesselOfRuin
    /// ```
    ///
    /// The ability's raw value is `"vessel-of-ruin"`.
    static let vesselOfRuin = VesselOfRuin.ability
}

enum VesselOfRuin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "vessel-of-ruin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わざわいのうつわ"
        default:
            "Vessel of Ruin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分以外のポケモンのとくこうが0.75倍になる。"
        case (.ix, _):
            "The Special Attack of all other Pokémon is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
