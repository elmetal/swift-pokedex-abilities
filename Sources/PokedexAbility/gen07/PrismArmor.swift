//
//  PrismArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as プリズムアーマー in Japanese.
    ///
    /// The localized name of this ability is `"Prism Armor"` in English and
    /// `"プリズムアーマー"` in Japanese.
    ///
    /// Use this value when you need to refer to Prism Armor by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.prismArmor
    /// ```
    ///
    /// The ability's raw value is `"prism-armor"`.
    static let prismArmor = PrismArmor.ability
}

enum PrismArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "prism-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "プリズムアーマー"
        default:
            "Prism Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "効果抜群の技で受けるダメージが0.75倍になる。"
        case (.vii ... .ix, _):
            "Damage from super-effective moves is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
