//
//  WonderGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふしぎなまもり in Japanese.
    ///
    /// The localized name of this ability is `"Wonder Guard"` in English and
    /// `"ふしぎなまもり"` in Japanese.
    ///
    /// Use this value when you need to refer to Wonder Guard by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.wonderGuard
    /// ```
    ///
    /// The ability's raw value is `"wonder-guard"`.
    static let wonderGuard = WonderGuard.ability
}

enum WonderGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wonder-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふしぎなまもり"
        default:
            "Wonder Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "効果抜群の攻撃技以外ではダメージを受けない。"
        case (.iii ... .ix, _):
            "Only super-effective damaging moves can hit the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
