/**
 * Entry points for the MDX pipeline declared in `source.config.ts`.
 *
 * This barrel exists so the config never imports `./cjk` by path: the Docker
 * `deps` stage copies `source.config.ts` before `src/` exists, and every local
 * module it reaches has to be copied along with it. A barrel with no imports
 * beyond the plugins keeps that surface explicit and small.
 */
export {
  type MdastNode,
  remarkCjkLineBreaks,
  tightenCjkSpacing,
} from './cjk'
