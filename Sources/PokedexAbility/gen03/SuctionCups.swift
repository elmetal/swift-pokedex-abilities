//
//  SuctionCups.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きゅうばん in Japanese.
    ///
    /// The localized name of this ability is `"Suction Cups"` in English and
    /// `"きゅうばん"` in Japanese.
    ///
    /// Use this value when you need to refer to Suction Cups by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.suctionCups
    /// ```
    ///
    /// The ability's raw value is `"suction-cups"`.
    static let suctionCups = SuctionCups.ability
}

enum SuctionCups: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "suction-cups")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きゅうばん"
        default:
            "Suction Cups"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "相手の技や道具で強制的に交代させられない。"
        case (.iii ... .ix, _):
            "The Pokémon cannot be forced to switch out."
        default:
            name(locale: locale)
        }
    }
}
