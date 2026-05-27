//
//  AirLock.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as エアロック in Japanese.
    ///
    /// The localized name of this ability is `"Air Lock"` in English and
    /// `"エアロック"` in Japanese.
    ///
    /// Use this value when you need to refer to Air Lock by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.airLock
    /// ```
    ///
    /// The ability's raw value is `"air-lock"`.
    static let airLock = AirLock.ability
}

enum AirLock: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "air-lock")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "エアロック"
        default:
            "Air Lock"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "場にいる間、天気の効果をなくす。"
        case (.iii ... .ix, _):
            "All effects of weather are negated while the Pokémon is in battle."
        default:
            name(locale: locale)
        }
    }
}
