//
//  IceScales.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as こおりのりんぷん in Japanese.
    ///
    /// The localized name of this ability is `"Ice Scales"` in English and
    /// `"こおりのりんぷん"` in Japanese.
    ///
    /// Use this value when you need to refer to Ice Scales by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.iceScales
    /// ```
    ///
    /// The ability's raw value is `"ice-scales"`.
    static let iceScales = IceScales.ability
}

enum IceScales: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ice-scales")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こおりのりんぷん"
        default:
            "Ice Scales"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "特殊技で受けるダメージが半分になる。"
        case (.viii ... .ix, _):
            "Damage from special moves is halved."
        default:
            name(locale: locale)
        }
    }
}
