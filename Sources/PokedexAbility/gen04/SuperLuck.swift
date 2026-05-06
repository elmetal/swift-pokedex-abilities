//
//  SuperLuck.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きょううん in Japanese.
    ///
    /// The localized name of this ability is `"Super Luck"` in English and
    /// `"きょううん"` in Japanese.
    ///
    /// Use this value when you need to refer to Super Luck by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.superLuck
    /// ```
    ///
    /// The ability's raw value is `"super-luck"`.
    static let superLuck = SuperLuck.ability
}

enum SuperLuck: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "super-luck")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きょううん"
        default:
            "Super Luck"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "自分の技が急所に当たりやすくなる。"
        case (.iv, _):
            "The Pokémon's moves have one higher critical-hit stage."
        default:
            name(locale: locale)
        }
    }
}
