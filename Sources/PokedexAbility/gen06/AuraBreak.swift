//
//  AuraBreak.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as オーラブレイク in Japanese.
    ///
    /// The localized name of this ability is `"Aura Break"` in English and
    /// `"オーラブレイク"` in Japanese.
    ///
    /// Use this value when you need to refer to Aura Break by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.auraBreak
    /// ```
    ///
    /// The ability's raw value is `"aura-break"`.
    static let auraBreak = AuraBreak.ability
}

enum AuraBreak: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aura-break")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "オーラブレイク"
        default:
            "Aura Break"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "オーラの特性の効果を逆にする。"
        case (.vi ... .ix, _):
            "The effects of aura Abilities are reversed."
        default:
            name(locale: locale)
        }
    }
}
