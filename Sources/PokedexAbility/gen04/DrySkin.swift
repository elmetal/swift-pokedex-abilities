//
//  DrySkin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かんそうはだ in Japanese.
    ///
    /// The localized name of this ability is `"Dry Skin"` in English and
    /// `"かんそうはだ"` in Japanese.
    ///
    /// Use this value when you need to refer to Dry Skin by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.drySkin
    /// ```
    ///
    /// The ability's raw value is `"dry-skin"`.
    static let drySkin = DrySkin.ability
}

enum DrySkin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dry-skin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かんそうはだ"
        default:
            "Dry Skin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "みずタイプの技で最大HPの1/4回復し、ほのおタイプの技で受けるダメージが1.25倍になる。雨で回復し、晴れでダメージを受ける。"
        case (.iv ... .ix, _):
            "Water-type moves heal 1/4 maximum HP, Fire-type damage is 1.25x, rain restores HP, and harsh sunlight damages the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
