//
//  PowerOfAlchemy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かがくのちから in Japanese.
    ///
    /// The localized name of this ability is `"Power of Alchemy"` in English and
    /// `"かがくのちから"` in Japanese.
    ///
    /// Use this value when you need to refer to Power of Alchemy by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.powerOfAlchemy
    /// ```
    ///
    /// The ability's raw value is `"power-of-alchemy"`.
    static let powerOfAlchemy = PowerOfAlchemy.ability
}

enum PowerOfAlchemy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "power-of-alchemy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かがくのちから"
        default:
            "Power of Alchemy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "味方が倒された時、その味方の特性を受け継ぐ。"
        case (.vii, _):
            "When an ally is knocked out, the Pokémon copies that ally's Ability."
        default:
            name(locale: locale)
        }
    }
}
