//
//  StormDrain.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as よびみず in Japanese.
    ///
    /// The localized name of this ability is `"Storm Drain"` in English and
    /// `"よびみず"` in Japanese.
    ///
    /// Use this value when you need to refer to Storm Drain by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.stormDrain
    /// ```
    ///
    /// The ability's raw value is `"storm-drain"`.
    static let stormDrain = StormDrain.ability
}

enum StormDrain: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "storm-drain")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "よびみず"
        default:
            "Storm Drain"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "ダブルバトルで、単体を対象にするみずタイプの技を自分に引き寄せる。"
        case (.iv ... .ix, _):
            "In Double Battles, single-target Water-type moves are redirected to the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
