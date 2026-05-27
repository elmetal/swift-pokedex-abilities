//
//  MagicGuard.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as マジックガード in Japanese.
    ///
    /// The localized name of this ability is `"Magic Guard"` in English and
    /// `"マジックガード"` in Japanese.
    ///
    /// Use this value when you need to refer to Magic Guard by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.magicGuard
    /// ```
    ///
    /// The ability's raw value is `"magic-guard"`.
    static let magicGuard = MagicGuard.ability
}

enum MagicGuard: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magic-guard")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マジックガード"
        default:
            "Magic Guard"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "直接攻撃以外ではダメージを受けない。"
        case (.iv ... .ix, _):
            "The Pokémon takes damage only from direct attacks."
        default:
            name(locale: locale)
        }
    }
}
