//
//  HadronEngine.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ハドロンエンジン in Japanese.
    ///
    /// The localized name of this ability is `"Hadron Engine"` in English and
    /// `"ハドロンエンジン"` in Japanese.
    ///
    /// Use this value when you need to refer to Hadron Engine by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.hadronEngine
    /// ```
    ///
    /// The ability's raw value is `"hadron-engine"`.
    static let hadronEngine = HadronEngine.ability
}

enum HadronEngine: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hadron-engine")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ハドロンエンジン"
        default:
            "Hadron Engine"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、場をエレキフィールドにし、エレキフィールドの時とくこうが上がる。"
        case (.ix, _):
            "When the Pokémon enters battle, it creates Electric Terrain, and its Special Attack is boosted during Electric Terrain."
        default:
            name(locale: locale)
        }
    }
}
