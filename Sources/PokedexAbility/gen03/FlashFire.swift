//
//  FlashFire.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as もらいび in Japanese.
    ///
    /// The localized name of this ability is `"Flash Fire"` in English and
    /// `"もらいび"` in Japanese.
    ///
    /// Use this value when you need to refer to Flash Fire by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.flashFire
    /// ```
    ///
    /// The ability's raw value is `"flash-fire"`.
    static let flashFire = FlashFire.ability
}

enum FlashFire: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "flash-fire")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "もらいび"
        default:
            "Flash Fire"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "ほのおタイプの技を受けると無効化し、自分のほのおタイプの技の威力が1.5倍になる。"
        case (.iii ... .ix, _):
            "Fire-type moves deal no damage and power up the Pokémon's Fire-type moves by 1.5x."
        default:
            name(locale: locale)
        }
    }
}
