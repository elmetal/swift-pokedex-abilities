//
//  EmergencyExit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ききかいひ in Japanese.
    ///
    /// The localized name of this ability is `"Emergency Exit"` in English and
    /// `"ききかいひ"` in Japanese.
    ///
    /// Use this value when you need to refer to Emergency Exit by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.emergencyExit
    /// ```
    ///
    /// The ability's raw value is `"emergency-exit"`.
    static let emergencyExit = EmergencyExit.ability
}

enum EmergencyExit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "emergency-exit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ききかいひ"
        default:
            "Emergency Exit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "HPが半分以下になると交代する。"
        case (.vii ... .ix, _):
            "When HP drops to half or less, the Pokémon switches out."
        default:
            name(locale: locale)
        }
    }
}
