//
//  WanderingSpirit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as さまようたましい in Japanese.
    ///
    /// The localized name of this ability is `"Wandering Spirit"` in English and
    /// `"さまようたましい"` in Japanese.
    ///
    /// Use this value when you need to refer to Wandering Spirit by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.wanderingSpirit
    /// ```
    ///
    /// The ability's raw value is `"wandering-spirit"`.
    static let wanderingSpirit = WanderingSpirit.ability
}

enum WanderingSpirit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wandering-spirit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "さまようたましい"
        default:
            "Wandering Spirit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "直接攻撃を受けた時、相手と特性を入れ替える。"
        case (.viii, _):
            "Contact with the Pokémon swaps Abilities with the attacker."
        default:
            name(locale: locale)
        }
    }
}
