//
//  ArmorTail.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as テイルアーマー in Japanese.
    ///
    /// The localized name of this ability is `"Armor Tail"` in English and
    /// `"テイルアーマー"` in Japanese.
    ///
    /// Use this value when you need to refer to Armor Tail by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.armorTail
    /// ```
    ///
    /// The ability's raw value is `"armor-tail"`.
    static let armorTail = ArmorTail.ability
}

enum ArmorTail: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "armor-tail")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "テイルアーマー"
        default:
            "Armor Tail"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "相手は自分や味方に先制技を出せない。"
        case (.ix, _):
            "Opposing Pokémon cannot use priority moves against the Pokémon or its allies."
        default:
            name(locale: locale)
        }
    }
}
