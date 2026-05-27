//
//  ThickFat.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as あついしぼう in Japanese.
    ///
    /// The localized name of this ability is `"Thick Fat"` in English and
    /// `"あついしぼう"` in Japanese.
    ///
    /// Use this value when you need to refer to Thick Fat by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.thickFat
    /// ```
    ///
    /// The ability's raw value is `"thick-fat"`.
    static let thickFat = ThickFat.ability
}

enum ThickFat: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "thick-fat")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あついしぼう"
        default:
            "Thick Fat"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "ほのお・こおりタイプの技で受けるダメージが半分になる。"
        case (.iii ... .ix, _):
            "Damage from Fire- and Ice-type moves is halved."
        default:
            name(locale: locale)
        }
    }
}
