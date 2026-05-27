//
//  ElectricSurge.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as エレキメイカー in Japanese.
    ///
    /// The localized name of this ability is `"Electric Surge"` in English and
    /// `"エレキメイカー"` in Japanese.
    ///
    /// Use this value when you need to refer to Electric Surge by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.electricSurge
    /// ```
    ///
    /// The ability's raw value is `"electric-surge"`.
    static let electricSurge = ElectricSurge.ability
}

enum ElectricSurge: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "electric-surge")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "エレキメイカー"
        default:
            "Electric Surge"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "登場した時、場をエレキフィールドにする。"
        case (.vii ... .ix, _):
            "When the Pokémon enters battle, it creates Electric Terrain."
        default:
            name(locale: locale)
        }
    }
}
