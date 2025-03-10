//
//  Functions.swift
//  Mochi Diffusion
//
//  Created by Joshua Park on 12/17/2022.
//

import Foundation

func getHumanReadableInfo(sdi: SDImage) -> String {
    return """
        Prompt:
        \(sdi.prompt)

        Negative Prompt:
        \(sdi.negativePrompt)

        Size:
        \(sdi.width) x \(sdi.height)

        Scheduler:
        \(sdi.scheduler.rawValue)

        Seed:
        \(sdi.seed)

        Steps:
        \(sdi.steps)

        Guidance Scale:
        \(sdi.guidanceScale)

        Image Index:
        \(sdi.imageIndex)

        Model:
        \(sdi.model)
        """
}
