//
//  Multiscale.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as マルチスケイル in Japanese.
    ///
    /// The localized name of this ability is `"Multiscale"` in English and
    /// `"マルチスケイル"` in Japanese.
    ///
    /// Use this value when you need to refer to Multiscale by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.multiscale
    /// ```
    ///
    /// The ability's raw value is `"multiscale"`.
    static let multiscale = Multiscale.ability
}

enum Multiscale: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "multiscale")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マルチスケイル"
        default:
            "Multiscale"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "HPが満タンの時、攻撃技で受けるダメージが半分になる。"
        case (.v, _):
            "When HP is full, damage taken from attacks is halved."
        default:
            name(locale: locale)
        }
    }
}
