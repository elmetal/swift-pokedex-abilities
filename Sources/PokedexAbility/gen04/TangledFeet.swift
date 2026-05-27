//
//  TangledFeet.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ちどりあし in Japanese.
    ///
    /// The localized name of this ability is `"Tangled Feet"` in English and
    /// `"ちどりあし"` in Japanese.
    ///
    /// Use this value when you need to refer to Tangled Feet by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.tangledFeet
    /// ```
    ///
    /// The ability's raw value is `"tangled-feet"`.
    static let tangledFeet = TangledFeet.ability
}

enum TangledFeet: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tangled-feet")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちどりあし"
        default:
            "Tangled Feet"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "こんらん状態の時、回避率が2倍になる。"
        case (.iv ... .ix, _):
            "When confused, evasion is doubled."
        default:
            name(locale: locale)
        }
    }
}
