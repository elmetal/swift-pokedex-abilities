//
//  RockHead.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as いしあたま in Japanese.
    ///
    /// The localized name of this ability is `"Rock Head"` in English and
    /// `"いしあたま"` in Japanese.
    ///
    /// Use this value when you need to refer to Rock Head by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.rockHead
    /// ```
    ///
    /// The ability's raw value is `"rock-head"`.
    static let rockHead = RockHead.ability
}

enum RockHead: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rock-head")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いしあたま"
        default:
            "Rock Head"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "自分の技の反動ダメージを受けない。"
        case (.iii ... .ix, _):
            "The Pokémon does not take recoil damage from its moves."
        default:
            name(locale: locale)
        }
    }
}
