//
//  SeedSower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as こぼれダネ in Japanese.
    ///
    /// The localized name of this ability is `"Seed Sower"` in English and
    /// `"こぼれダネ"` in Japanese.
    ///
    /// Use this value when you need to refer to Seed Sower by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.seedSower
    /// ```
    ///
    /// The ability's raw value is `"seed-sower"`.
    static let seedSower = SeedSower.ability
}

enum SeedSower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "seed-sower")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こぼれダネ"
        default:
            "Seed Sower"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "攻撃を受けると、場をグラスフィールドにする。"
        case (.ix, _):
            "When hit by an attack, the Pokémon creates Grassy Terrain."
        default:
            name(locale: locale)
        }
    }
}
