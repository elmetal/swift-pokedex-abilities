//
//  PoisonPoint.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as どくのトゲ in Japanese.
    ///
    /// The localized name of this ability is `"Poison Point"` in English and
    /// `"どくのトゲ"` in Japanese.
    ///
    /// Use this value when you need to refer to Poison Point by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.poisonPoint
    /// ```
    ///
    /// The ability's raw value is `"poison-point"`.
    static let poisonPoint = PoisonPoint.ability
}

enum PoisonPoint: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "poison-point")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくのトゲ"
        default:
            "Poison Point"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "直接攻撃を受けた時、30%の確率で相手をどく状態にする。"
        case (.iii ... .ix, _):
            "Contact with the Pokémon has a 30% chance to poison the attacker."
        default:
            name(locale: locale)
        }
    }
}
