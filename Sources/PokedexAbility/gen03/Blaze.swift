//
//  Blaze.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as もうか in Japanese.
    ///
    /// The localized name of this ability is `"Blaze"` in English and
    /// `"もうか"` in Japanese.
    ///
    /// Use this value when you need to refer to Blaze by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.blaze
    /// ```
    ///
    /// The ability's raw value is `"blaze"`.
    static let blaze = Blaze.ability
}

enum Blaze: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "blaze")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "もうか"
        default:
            "Blaze"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "HPが1/3以下の時、ほのおタイプの攻撃技の威力が1.5倍になる。"
        case (.iii, _):
            "When HP is 1/3 or less, Fire-type attack moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
