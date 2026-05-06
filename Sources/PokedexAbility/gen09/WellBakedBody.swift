//
//  WellBakedBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as こんがりボディ in Japanese.
    ///
    /// The localized name of this ability is `"Well-Baked Body"` in English and
    /// `"こんがりボディ"` in Japanese.
    ///
    /// Use this value when you need to refer to Well-Baked Body by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.wellBakedBody
    /// ```
    ///
    /// The ability's raw value is `"well-baked-body"`.
    static let wellBakedBody = WellBakedBody.ability
}

enum WellBakedBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "well-baked-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こんがりボディ"
        default:
            "Well-Baked Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "ほのおタイプの技を受けると、ダメージを受けずぼうぎょが2段階上がる。"
        case (.ix, _):
            "Fire-type moves deal no damage and raise Defense by two stages."
        default:
            name(locale: locale)
        }
    }
}
