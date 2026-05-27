//
//  MagicBounce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as マジックミラー in Japanese.
    ///
    /// The localized name of this ability is `"Magic Bounce"` in English and
    /// `"マジックミラー"` in Japanese.
    ///
    /// Use this value when you need to refer to Magic Bounce by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.magicBounce
    /// ```
    ///
    /// The ability's raw value is `"magic-bounce"`.
    static let magicBounce = MagicBounce.ability
}

enum MagicBounce: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magic-bounce")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マジックミラー"
        default:
            "Magic Bounce"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "受けた変化技を相手に跳ね返す。"
        case (.v ... .ix, _):
            "Status moves used against the Pokémon are reflected back to the user."
        default:
            name(locale: locale)
        }
    }
}
