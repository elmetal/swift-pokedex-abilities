//
//  EmbodyAspect.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as おもかげやどし in Japanese.
    ///
    /// The localized name of this ability is `"Embody Aspect"` in English and
    /// `"おもかげやどし"` in Japanese.
    ///
    /// Use this value when you need to refer to Embody Aspect by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.embodyAspect
    /// ```
    ///
    /// The ability's raw value is `"embody-aspect"`.
    static let embodyAspect = EmbodyAspect.ability
}

enum EmbodyAspect: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "embody-aspect")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おもかげやどし"
        default:
            "Embody Aspect"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "オーガポンがテラスタルした時、仮面に応じた能力が上がる。"
        case (.ix, _):
            "When Ogerpon Terastallizes, one of its stats rises depending on its mask."
        default:
            name(locale: locale)
        }
    }
}
