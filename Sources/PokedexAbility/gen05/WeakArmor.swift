//
//  WeakArmor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as くだけるよろい in Japanese.
    ///
    /// The localized name of this ability is `"Weak Armor"` in English and
    /// `"くだけるよろい"` in Japanese.
    ///
    /// Use this value when you need to refer to Weak Armor by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.weakArmor
    /// ```
    ///
    /// The ability's raw value is `"weak-armor"`.
    static let weakArmor = WeakArmor.ability
}

enum WeakArmor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "weak-armor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "くだけるよろい"
        default:
            "Weak Armor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "物理技を受けた時、ぼうぎょが1段階下がり、すばやさが1段階上がる。"
        case (.v ... .ix, _):
            "When hit by a physical move, Defense falls by one stage and Speed rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
