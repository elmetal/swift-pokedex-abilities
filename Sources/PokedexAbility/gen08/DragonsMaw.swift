//
//  DragonsMaw.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as りゅうのあぎと in Japanese.
    ///
    /// The localized name of this ability is `"Dragon's Maw"` in English and
    /// `"りゅうのあぎと"` in Japanese.
    ///
    /// Use this value when you need to refer to Dragon's Maw by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.dragonsMaw
    /// ```
    ///
    /// The ability's raw value is `"dragons-maw"`.
    static let dragonsMaw = DragonsMaw.ability
}

enum DragonsMaw: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dragons-maw")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "りゅうのあぎと"
        default:
            "Dragon's Maw"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "ドラゴンタイプの技の威力が1.5倍になる。"
        case (.viii, _):
            "Dragon-type moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
