//
//  Pressure.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as プレッシャー in Japanese.
    ///
    /// The localized name of this ability is `"Pressure"` in English and
    /// `"プレッシャー"` in Japanese.
    ///
    /// Use this value when you need to refer to Pressure by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.pressure
    /// ```
    ///
    /// The ability's raw value is `"pressure"`.
    static let pressure = Pressure.ability
}

enum Pressure: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pressure")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "プレッシャー"
        default:
            "Pressure"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "自分を対象にした相手の技のPP消費が2になる。"
        case (.iii ... .ix, _):
            "Moves targeting the Pokémon use 2 PP instead of 1."
        default:
            name(locale: locale)
        }
    }
}
