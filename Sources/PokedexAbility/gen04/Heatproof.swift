//
//  Heatproof.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as たいねつ in Japanese.
    ///
    /// The localized name of this ability is `"Heatproof"` in English and
    /// `"たいねつ"` in Japanese.
    ///
    /// Use this value when you need to refer to Heatproof by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.heatproof
    /// ```
    ///
    /// The ability's raw value is `"heatproof"`.
    static let heatproof = Heatproof.ability
}

enum Heatproof: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "heatproof")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "たいねつ"
        default:
            "Heatproof"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "ほのおタイプの技で受けるダメージと、やけどのダメージが半分になる。"
        case (.iv, _):
            "Damage from Fire-type moves and burn damage are halved."
        default:
            name(locale: locale)
        }
    }
}
