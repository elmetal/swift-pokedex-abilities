//
//  HoneyGather.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as みつあつめ in Japanese.
    ///
    /// The localized name of this ability is `"Honey Gather"` in English and
    /// `"みつあつめ"` in Japanese.
    ///
    /// Use this value when you need to refer to Honey Gather by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.honeyGather
    /// ```
    ///
    /// The ability's raw value is `"honey-gather"`.
    static let honeyGather = HoneyGather.ability
}

enum HoneyGather: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "honey-gather")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "みつあつめ"
        default:
            "Honey Gather"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "戦闘後、あまいミツを拾ってくることがある。"
        case (.iv ... .ix, _):
            "After battle, the Pokémon may pick up Honey."
        default:
            name(locale: locale)
        }
    }
}
