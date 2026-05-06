//
//  WaterBubble.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すいほう in Japanese.
    ///
    /// The localized name of this ability is `"Water Bubble"` in English and
    /// `"すいほう"` in Japanese.
    ///
    /// Use this value when you need to refer to Water Bubble by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.waterBubble
    /// ```
    ///
    /// The ability's raw value is `"water-bubble"`.
    static let waterBubble = WaterBubble.ability
}

enum WaterBubble: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "water-bubble")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すいほう"
        default:
            "Water Bubble"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "ほのおタイプの技で受けるダメージが半分になり、やけどにならず、みずタイプの技の威力が2倍になる。"
        case (.vii, _):
            "Fire-type damage is halved, burn is prevented, and Water-type moves have 2x power."
        default:
            name(locale: locale)
        }
    }
}
