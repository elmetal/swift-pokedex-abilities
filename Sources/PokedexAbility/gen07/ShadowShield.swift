//
//  ShadowShield.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ファントムガード in Japanese.
    ///
    /// The localized name of this ability is `"Shadow Shield"` in English and
    /// `"ファントムガード"` in Japanese.
    ///
    /// Use this value when you need to refer to Shadow Shield by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.shadowShield
    /// ```
    ///
    /// The ability's raw value is `"shadow-shield"`.
    static let shadowShield = ShadowShield.ability
}

enum ShadowShield: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shadow-shield")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ファントムガード"
        default:
            "Shadow Shield"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "HPが満タンの時、攻撃技で受けるダメージが半分になる。"
        case (.vii, _):
            "When HP is full, damage taken from attacks is halved."
        default:
            name(locale: locale)
        }
    }
}
