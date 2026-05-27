//
//  PoisonTouch.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as どくしゅ in Japanese.
    ///
    /// The localized name of this ability is `"Poison Touch"` in English and
    /// `"どくしゅ"` in Japanese.
    ///
    /// Use this value when you need to refer to Poison Touch by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.poisonTouch
    /// ```
    ///
    /// The ability's raw value is `"poison-touch"`.
    static let poisonTouch = PoisonTouch.ability
}

enum PoisonTouch: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "poison-touch")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくしゅ"
        default:
            "Poison Touch"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "直接攻撃の技を使った時、30%の確率で相手をどく状態にする。"
        case (.v ... .ix, _):
            "Contact moves used by the Pokémon have a 30% chance to poison the target."
        default:
            name(locale: locale)
        }
    }
}
