//
//  CursedBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as のろわれボディ in Japanese.
    ///
    /// The localized name of this ability is `"Cursed Body"` in English and
    /// `"のろわれボディ"` in Japanese.
    ///
    /// Use this value when you need to refer to Cursed Body by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.cursedBody
    /// ```
    ///
    /// The ability's raw value is `"cursed-body"`.
    static let cursedBody = CursedBody.ability
}

enum CursedBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cursed-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "のろわれボディ"
        default:
            "Cursed Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "攻撃を受けた時、30%の確率で相手のその技をかなしばり状態にする。"
        case (.v ... .ix, _):
            "When hit by a move, there is a 30% chance to disable that move."
        default:
            name(locale: locale)
        }
    }
}
