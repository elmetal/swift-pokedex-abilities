//
//  Battery.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as バッテリー in Japanese.
    ///
    /// The localized name of this ability is `"Battery"` in English and
    /// `"バッテリー"` in Japanese.
    ///
    /// Use this value when you need to refer to Battery by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.battery
    /// ```
    ///
    /// The ability's raw value is `"battery"`.
    static let battery = Battery.ability
}

enum Battery: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "battery")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "バッテリー"
        default:
            "Battery"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "味方の特殊技の威力が1.3倍になる。"
        case (.vii ... .ix, _):
            "Allies' special moves have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
