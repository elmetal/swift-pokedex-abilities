//
//  PowerConstruct.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as スワームチェンジ in Japanese.
    ///
    /// The localized name of this ability is `"Power Construct"` in English and
    /// `"スワームチェンジ"` in Japanese.
    ///
    /// Use this value when you need to refer to Power Construct by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.powerConstruct
    /// ```
    ///
    /// The ability's raw value is `"power-construct"`.
    static let powerConstruct = PowerConstruct.ability
}

enum PowerConstruct: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "power-construct")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スワームチェンジ"
        default:
            "Power Construct"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "ターン終了時、ジガルデのHPが半分以下ならパーフェクトフォルムになる。"
        case (.vii, _):
            "At the end of a turn, Zygarde changes to Complete Forme if its HP is half or less."
        default:
            name(locale: locale)
        }
    }
}
