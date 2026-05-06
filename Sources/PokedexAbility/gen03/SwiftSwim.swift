//
//  SwiftSwim.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すいすい in Japanese.
    ///
    /// The localized name of this ability is `"Swift Swim"` in English and
    /// `"すいすい"` in Japanese.
    ///
    /// Use this value when you need to refer to Swift Swim by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.swiftSwim
    /// ```
    ///
    /// The ability's raw value is `"swift-swim"`.
    static let swiftSwim = SwiftSwim.ability
}

enum SwiftSwim: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "swift-swim")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すいすい"
        default:
            "Swift Swim"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "雨の時、すばやさが2倍になる。"
        case (.iii, _):
            "During rain, Speed is doubled."
        default:
            name(locale: locale)
        }
    }
}
