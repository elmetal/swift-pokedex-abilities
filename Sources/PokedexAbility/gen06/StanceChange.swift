//
//  StanceChange.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as バトルスイッチ in Japanese.
    ///
    /// The localized name of this ability is `"Stance Change"` in English and
    /// `"バトルスイッチ"` in Japanese.
    ///
    /// Use this value when you need to refer to Stance Change by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.stanceChange
    /// ```
    ///
    /// The ability's raw value is `"stance-change"`.
    static let stanceChange = StanceChange.ability
}

enum StanceChange: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "stance-change")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "バトルスイッチ"
        default:
            "Stance Change"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ギルガルドが使う技に応じて姿を変える。"
        case (.vi, _):
            "Aegislash changes form depending on the moves it uses."
        default:
            name(locale: locale)
        }
    }
}
