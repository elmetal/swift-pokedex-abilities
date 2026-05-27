//
//  SteelySpirit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はがねのせいしん in Japanese.
    ///
    /// The localized name of this ability is `"Steely Spirit"` in English and
    /// `"はがねのせいしん"` in Japanese.
    ///
    /// Use this value when you need to refer to Steely Spirit by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.steelySpirit
    /// ```
    ///
    /// The ability's raw value is `"steely-spirit"`.
    static let steelySpirit = SteelySpirit.ability
}

enum SteelySpirit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "steely-spirit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はがねのせいしん"
        default:
            "Steely Spirit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "自分と味方のはがねタイプの技の威力が1.5倍になる。"
        case (.viii ... .ix, _):
            "Steel-type moves used by the Pokémon and its allies have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
