//
//  MotorDrive.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let motorDrive = MotorDrive.ability
}

enum MotorDrive: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "motor-drive")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "でんきエンジン"
        default:
            "Motor Drive"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "でんきタイプの技を受けると、ダメージを受けずすばやさが1段階上がる。"
        case (.iv, _):
            "Electric-type moves deal no damage and raise Speed by one stage."
        default:
            name(locale: locale)
        }
    }
}
