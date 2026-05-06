//
//  TeraShift.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as テラスチェンジ in Japanese.
    ///
    /// The localized name of this ability is `"Tera Shift"` in English and
    /// `"テラスチェンジ"` in Japanese.
    ///
    /// Use this value when you need to refer to Tera Shift by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.teraShift
    /// ```
    ///
    /// The ability's raw value is `"tera-shift"`.
    static let teraShift = TeraShift.ability
}

enum TeraShift: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tera-shift")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "テラスチェンジ"
        default:
            "Tera Shift"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、テラスタルフォルムに変化する。"
        case (.ix, _):
            "When the Pokémon enters battle, it changes into its Terastal Form."
        default:
            name(locale: locale)
        }
    }
}
