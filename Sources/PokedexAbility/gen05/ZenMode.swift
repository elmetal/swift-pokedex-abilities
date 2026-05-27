//
//  ZenMode.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ダルマモード in Japanese.
    ///
    /// The localized name of this ability is `"Zen Mode"` in English and
    /// `"ダルマモード"` in Japanese.
    ///
    /// Use this value when you need to refer to Zen Mode by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.zenMode
    /// ```
    ///
    /// The ability's raw value is `"zen-mode"`.
    static let zenMode = ZenMode.ability
}

enum ZenMode: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "zen-mode")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ダルマモード"
        default:
            "Zen Mode"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "ターン終了時、ヒヒダルマのHPが半分以下なら姿が変わる。"
        case (.v ... .ix, _):
            "At the end of a turn, Darmanitan changes form if its HP is half or less."
        default:
            name(locale: locale)
        }
    }
}
