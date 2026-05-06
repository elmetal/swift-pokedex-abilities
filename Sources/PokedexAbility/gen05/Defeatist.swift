//
//  Defeatist.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as よわき in Japanese.
    ///
    /// The localized name of this ability is `"Defeatist"` in English and
    /// `"よわき"` in Japanese.
    ///
    /// Use this value when you need to refer to Defeatist by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.defeatist
    /// ```
    ///
    /// The ability's raw value is `"defeatist"`.
    static let defeatist = Defeatist.ability
}

enum Defeatist: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "defeatist")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "よわき"
        default:
            "Defeatist"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "HPが半分以下の時、こうげきととくこうが半分になる。"
        case (.v, _):
            "When HP is half or less, Attack and Special Attack are halved."
        default:
            name(locale: locale)
        }
    }
}
