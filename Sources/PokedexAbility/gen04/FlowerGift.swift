//
//  FlowerGift.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as フラワーギフト in Japanese.
    ///
    /// The localized name of this ability is `"Flower Gift"` in English and
    /// `"フラワーギフト"` in Japanese.
    ///
    /// Use this value when you need to refer to Flower Gift by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.flowerGift
    /// ```
    ///
    /// The ability's raw value is `"flower-gift"`.
    static let flowerGift = FlowerGift.ability
}

enum FlowerGift: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "flower-gift")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "フラワーギフト"
        default:
            "Flower Gift"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "晴れの時、自分と味方のこうげき・とくぼうが1.5倍になる。"
        case (.iv ... .ix, _):
            "During harsh sunlight, the Pokémon and its allies have 1.5x Attack and Special Defense."
        default:
            name(locale: locale)
        }
    }
}
