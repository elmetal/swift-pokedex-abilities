//
//  Rattled.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as びびり in Japanese.
    ///
    /// The localized name of this ability is `"Rattled"` in English and
    /// `"びびり"` in Japanese.
    ///
    /// Use this value when you need to refer to Rattled by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.rattled
    /// ```
    ///
    /// The ability's raw value is `"rattled"`.
    static let rattled = Rattled.ability
}

enum Rattled: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "rattled")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "びびり"
        default:
            "Rattled"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "むし・ゴースト・あくタイプの技を受けた時、すばやさが1段階上がる。"
        case (.v ... .ix, _):
            "When hit by a Bug-, Ghost-, or Dark-type move, Speed rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
