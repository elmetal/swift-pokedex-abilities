//
//  LightningRod.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ひらいしん in Japanese.
    ///
    /// The localized name of this ability is `"Lightning Rod"` in English and
    /// `"ひらいしん"` in Japanese.
    ///
    /// Use this value when you need to refer to Lightning Rod by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.lightningRod
    /// ```
    ///
    /// The ability's raw value is `"lightning-rod"`.
    static let lightningRod = LightningRod.ability
}

enum LightningRod: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "lightning-rod")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ひらいしん"
        default:
            "Lightning Rod"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "ダブルバトルで、単体を対象にするでんきタイプの技を自分に引き寄せる。"
        case (.iii ... .ix, _):
            "In Double Battles, single-target Electric-type moves are redirected to the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
