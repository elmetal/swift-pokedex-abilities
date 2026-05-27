//
//  ShadowTag.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かげふみ in Japanese.
    ///
    /// The localized name of this ability is `"Shadow Tag"` in English and
    /// `"かげふみ"` in Japanese.
    ///
    /// Use this value when you need to refer to Shadow Tag by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.shadowTag
    /// ```
    ///
    /// The ability's raw value is `"shadow-tag"`.
    static let shadowTag = ShadowTag.ability
}

enum ShadowTag: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shadow-tag")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かげふみ"
        default:
            "Shadow Tag"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "相手は逃げたり交代したりできない。"
        case (.iii ... .ix, _):
            "Opposing Pokémon cannot flee or switch out."
        default:
            name(locale: locale)
        }
    }
}
