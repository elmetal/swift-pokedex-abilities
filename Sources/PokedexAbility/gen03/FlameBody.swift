//
//  FlameBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ほのおのからだ in Japanese.
    ///
    /// The localized name of this ability is `"Flame Body"` in English and
    /// `"ほのおのからだ"` in Japanese.
    ///
    /// Use this value when you need to refer to Flame Body by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.flameBody
    /// ```
    ///
    /// The ability's raw value is `"flame-body"`.
    static let flameBody = FlameBody.ability
}

enum FlameBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "flame-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ほのおのからだ"
        default:
            "Flame Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "直接攻撃を受けた時、30%の確率で相手をやけど状態にする。"
        case (.iii, _):
            "Contact with the Pokémon has a 30% chance to burn the attacker."
        default:
            name(locale: locale)
        }
    }
}
