//
//  AsOne.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as じんばいったい in Japanese.
    ///
    /// The localized name of this ability is `"As One"` in English and
    /// `"じんばいったい"` in Japanese.
    ///
    /// Use this value when you need to refer to As One by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.asOne
    /// ```
    ///
    /// The ability's raw value is `"as-one"`.
    static let asOne = AsOne.ability
}

enum AsOne: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "as-one")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じんばいったい"
        default:
            "As One"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "きんちょうかんと、しろのいななきまたはくろのいななきの効果をあわせ持つ。"
        case (.viii ... .ix, _):
            "Combines Unnerve with Chilling Neigh or Grim Neigh."
        default:
            name(locale: locale)
        }
    }
}
