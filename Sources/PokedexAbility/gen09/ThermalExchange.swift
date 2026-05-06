//
//  ThermalExchange.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ねつこうかん in Japanese.
    ///
    /// The localized name of this ability is `"Thermal Exchange"` in English and
    /// `"ねつこうかん"` in Japanese.
    ///
    /// Use this value when you need to refer to Thermal Exchange by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.thermalExchange
    /// ```
    ///
    /// The ability's raw value is `"thermal-exchange"`.
    static let thermalExchange = ThermalExchange.ability
}

enum ThermalExchange: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "thermal-exchange")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ねつこうかん"
        default:
            "Thermal Exchange"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "ほのおタイプの技を受けるとこうげきが1段階上がり、やけどにならない。"
        case (.ix, _):
            "When hit by a Fire-type move, Attack rises by one stage, and burn is prevented."
        default:
            name(locale: locale)
        }
    }
}
