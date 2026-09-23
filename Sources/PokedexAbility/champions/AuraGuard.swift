//
//  AuraGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/09/23
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はどうのぼうご in Japanese.
    ///
    /// The localized name of this ability is "Aura Guard" in English and
    /// "はどうのぼうご" in Japanese.
    ///
    /// Use this value when you need to refer to Aura Guard by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.auraGuard
    /// ```
    ///
    /// The ability's raw value is "aura-guard".
    static let auraGuard = AuraGuard.ability
}

enum AuraGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aura-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はどうのぼうご"
        default:
            "Aura Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "接触技で受けるダメージが半分になる。"
        case (.champions, _):
            "Damage taken from contact moves is reduced by 50%."
        default:
            name(locale: locale)
        }
    }
}
