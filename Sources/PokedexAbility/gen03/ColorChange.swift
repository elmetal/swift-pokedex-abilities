//
//  ColorChange.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as へんしょく in Japanese.
    ///
    /// The localized name of this ability is `"Color Change"` in English and
    /// `"へんしょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Color Change by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.colorChange
    /// ```
    ///
    /// The ability's raw value is `"color-change"`.
    static let colorChange = ColorChange.ability
}

enum ColorChange: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "color-change")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "へんしょく"
        default:
            "Color Change"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "攻撃技を受けた後、自分のタイプが受けた技のタイプになる。"
        case (.iii ... .ix, _):
            "After being hit by a damaging move, the Pokémon becomes that move's type."
        default:
            name(locale: locale)
        }
    }
}
