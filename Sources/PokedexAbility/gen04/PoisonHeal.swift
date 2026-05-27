//
//  PoisonHeal.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ポイズンヒール in Japanese.
    ///
    /// The localized name of this ability is `"Poison Heal"` in English and
    /// `"ポイズンヒール"` in Japanese.
    ///
    /// Use this value when you need to refer to Poison Heal by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.poisonHeal
    /// ```
    ///
    /// The ability's raw value is `"poison-heal"`.
    static let poisonHeal = PoisonHeal.ability
}

enum PoisonHeal: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "poison-heal")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ポイズンヒール"
        default:
            "Poison Heal"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "どく・もうどく状態の時、どくのダメージを受けず毎ターン最大HPの1/8回復する。"
        case (.iv ... .ix, _):
            "If poisoned, the Pokémon restores 1/8 of its maximum HP instead of taking poison damage."
        default:
            name(locale: locale)
        }
    }
}
