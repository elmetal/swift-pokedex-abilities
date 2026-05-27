//
//  VictoryStar.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しょうりのほし in Japanese.
    ///
    /// The localized name of this ability is `"Victory Star"` in English and
    /// `"しょうりのほし"` in Japanese.
    ///
    /// Use this value when you need to refer to Victory Star by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.victoryStar
    /// ```
    ///
    /// The ability's raw value is `"victory-star"`.
    static let victoryStar = VictoryStar.ability
}

enum VictoryStar: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "victory-star")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しょうりのほし"
        default:
            "Victory Star"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "自分と味方の技の命中率が1.1倍になる。"
        case (.v ... .ix, _):
            "The accuracy of the Pokémon and its allies is 1.1x."
        default:
            name(locale: locale)
        }
    }
}
