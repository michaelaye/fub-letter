-- Lua filter to set language-specific boolean flags based on letter-lang
-- This allows the template to provide language-specific defaults

function Meta(meta)
  -- Check if letter-lang is set
  if meta['letter-lang'] then
    local lang = pandoc.utils.stringify(meta['letter-lang'])

    -- Set boolean flags based on language
    if lang == 'de' then
      meta['is-german'] = true
      meta['is-english'] = false
    else
      -- Default to English for 'en' or any other value
      meta['is-german'] = false
      meta['is-english'] = true
    end
  else
    -- If letter-lang not set, default to English
    meta['is-german'] = false
    meta['is-english'] = true
  end

  return meta
end
