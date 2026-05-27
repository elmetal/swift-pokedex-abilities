//
//  VoltAbsorb.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ちくでん in Japanese.
    ///
    /// The localized name of this ability is `"Volt Absorb"` in English and
    /// `"ちくでん"` in Japanese.
    ///
    /// Use this value when you need to refer to Volt Absorb by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.voltAbsorb
    /// ```
    ///
    /// The ability's raw value is `"volt-absorb"`.
    static let voltAbsorb = VoltAbsorb.ability
}

enum VoltAbsorb: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "volt-absorb")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちくでん"
        default:
            "Volt Absorb"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "でんきタイプの技を受けると、ダメージを受けず最大HPの1/4回復する。"
        case (.iii ... .ix, _):
            "Electric-type moves heal 1/4 of maximum HP instead of dealing damage."
        default:
            name(locale: locale)
        }
    }
}
