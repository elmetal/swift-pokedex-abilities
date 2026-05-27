//
//  StickyHold.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ねんちゃく in Japanese.
    ///
    /// The localized name of this ability is `"Sticky Hold"` in English and
    /// `"ねんちゃく"` in Japanese.
    ///
    /// Use this value when you need to refer to Sticky Hold by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.stickyHold
    /// ```
    ///
    /// The ability's raw value is `"sticky-hold"`.
    static let stickyHold = StickyHold.ability
}

enum StickyHold: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sticky-hold")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ねんちゃく"
        default:
            "Sticky Hold"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "相手に持ち物を奪われたり、失ったりしない。"
        case (.iii ... .ix, _):
            "The Pokémon's held item cannot be taken or removed by other Pokémon."
        default:
            name(locale: locale)
        }
    }
}
