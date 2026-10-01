/**
 * Helper to resolve public assets correctly in all environments
 * (local dev, preview, and GitHub Pages subpath /Open-GYM/)
 */
export function getAssetUrl(path: string): string {
  const base = import.meta.env.BASE_URL || '/';
  const cleanPath = path.startsWith('/') ? path.slice(1) : path;
  const cleanBase = base.endsWith('/') ? base : `${base}/`;
  return `${cleanBase}${cleanPath}`;
}
