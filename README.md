# FU Berlin Letter Template for Quarto

This is a Quarto template for creating official letters with the Freie Universität Berlin (FU Berlin) corporate design.

The template uses the FU Berlin brand colors, fonts, and logo, with a professional layout including:
- FU Berlin logo in the upper left
- Sender information block in the upper right header
- Proper spacing and typography following university brand guidelines

## Features

- ✅ Official FU Berlin corporate design (colors, logo, layout)
- ✅ Professional PDF output via Quarto
- ✅ Multi-language support (English/German)
- ✅ Clean markdown interface - all LaTeX hidden in extension
- ✅ Customizable sender and recipient information
- ✅ Proper header alignment with invisible strut technique

## Creating a New Letter

You can use this as a template to create a letter with FU Berlin branding. The template is available in three variants:

### German Template (Recommended for German Letters)
Pre-filled with German example text and language settings:

```bash
quarto use template michaelaye/fub-letter/german
```

### English Template (Recommended for English Letters)
Pre-filled with English example text and language settings:

```bash
quarto use template michaelaye/fub-letter/english
```

### Generic Template
Minimal placeholder text - customize to your preference:

```bash
quarto use template michaelaye/fub-letter
```

All variants include the same extension and support both German and English through the `letter-lang` field.

## Installation For Existing Document

You may also use this format with an existing Quarto project or document.
From the quarto project or document directory, run the following command to install this format:

```bash
quarto install extension michaelaye/fub-letter
```

## Usage

To use the format, you can use the format name `fub-letter-pdf`. For example:

```bash
quarto render letter.qmd --to fub-letter-pdf
```

or in your document yaml:

```yaml
format: fub-letter-pdf
```

After rendering, the pdf file will be saved to the `_output` folder.

## YAML Header

The template uses a flat YAML structure for all fields:

```yaml
---
# Sender information (your details)
sender-name: "Dr. Your Name"
sender-department: "Your Department"
sender-institute: "Your Institute"
sender-faculty: "Your Faculty"
sender-address: "Your Street Address"
sender-city: "Postal Code City"
sender-phone: "+49 30 12345678"
sender-email: "your.email@fu-berlin.de"

# Recipient information
recipient-organization: "Organization Name"
recipient-department: "Department Name"
recipient-name: "Recipient Name"
recipient-address: "Street Address"
recipient-city: "Postal Code City, Country"

# Letter metadata
letter-subject: "Subject Line"
#letter-date: "2026-01-18"  # Omit this field to automatically use today's date
letter-lang: "en"
letter-greeting: "Dear Recipient Name,"
letter-closing: "Sincerely,"

format: fub-letter-pdf
---

Your letter content goes here.
```

### Field Descriptions

**Sender fields** (pre-fill with your information):
- `sender-name` - Your full name with title
- `sender-department` - Your department (FR, etc.)
- `sender-institute` - Your institute
- `sender-faculty` - Your faculty
- `sender-address` - Street address
- `sender-city` - Postal code and city
- `sender-phone` - Phone number with country code
- `sender-email` - Email address

**Recipient fields**:
- `recipient-organization` - Recipient's organization
- `recipient-department` - Recipient's department (optional)
- `recipient-name` - Recipient's name with title
- `recipient-address` - Street address
- `recipient-city` - Postal code and city

**Letter fields**:
- `letter-subject` - Subject line (bold by default)
- `letter-subject-plain` - Set to `true` for plain (non-bold) subject line
- `letter-date` - Date (DD.MM.YYYY or YYYY-MM-DD format). Omit this field to automatically use today's date.
- `letter-lang` - Language code ("en" or "de") that sets default greeting and closing
- `letter-greeting` - Opening salutation (optional - overrides language default)
- `letter-closing` - Closing salutation (optional - overrides language default)

### Multi-Language Support

The template supports English and German letters. The `letter-lang` field automatically sets appropriate language-specific text:

**Language defaults:**
- `letter-lang: "en"` → Subject label: "Subject:" / Greeting: "Dear Sir or Madam," / Closing: "Sincerely,"
- `letter-lang: "de"` → Subject label: "Betreff:" / Greeting: "Sehr geehrte Damen und Herren," / Closing: "Mit freundlichen Grüßen"

**English letter with custom greeting:**
```yaml
letter-lang: "en"
letter-greeting: "Dear Prof. Dr. Smith,"
# Closing will use default: "Sincerely,"
```

**German letter with custom greeting:**
```yaml
letter-lang: "de"
letter-greeting: "Sehr geehrte Frau Prof. Dr. Müller,"
# Closing will use default: "Mit freundlichen Grüßen"
```

**Override both greeting and closing:**
```yaml
letter-lang: "de"
letter-greeting: "Liebe Kolleginnen und Kollegen,"
letter-closing: "Herzliche Grüße"
```

## Customization

### Subject Line Formatting

By default, the subject line appears in bold. To use plain (non-bold) formatting:

```yaml
letter-subject: "Application for Research Position"
letter-subject-plain: true
```

### Using Your Own Logo

By default, the template uses the FU Berlin logo. To use a different logo:

```yaml
sender-logo: "path/to/your/logo.pdf"
```

### Date Format

You can customize the date format:

```yaml
letter-date: "January 18, 2026"  # English format
letter-date: "18. Januar 2026"   # German format
letter-date: "2026-01-18"        # ISO format
```

## Brand Guidelines

This template follows the official FU Berlin corporate design:

- **Primary Color**: FU Blue (#004659)
- **Accent Color**: FU Lime (#CCFF00)
- **Font**: Helvetica (helvet)
- **Font Size**: 12pt
- **Margins**:
  - Left: 2.5cm
  - Right: 2cm
  - Top: 2cm
  - Bottom: 2cm

## Technical Details

The template uses:
- `documentclass: article` with `fancyhdr` for headers
- FU Berlin logo in upper left (25% text width)
- Sender information in right header with invisible strut for alignment
- Proper vertical spacing using `\vspace` commands
- All LaTeX code hidden in `_extensions/fub-letter/` directory

## Example

A rendered example can be found in `_output/template.pdf`.

## License

This template uses the official FU Berlin corporate design elements. Ensure you have permission to use these elements before distributing letters.

## Author

K.-Michael Aye
- Email: michael.aye@fu-berlin.de
- GitHub: [@michaelaye](https://github.com/michaelaye)

## Credits

This template was forked from and adapted from [Julian Tao's qletter](https://github.com/juliantao/qletter).

Additional inspiration and structure were drawn from [Mickaël Canouil's quarto-letter extension](https://github.com/mcanouil/quarto-letter).

Original concept inspirations include [Rob Hyndman's MonashEBSTemplates](https://github.com/robjhyndman/MonashEBSTemplates/tree/master/inst/rmarkdown/templates/Letter).

## Version History

- **1.2.0** (2026-01-20): Multiple template variants
  - Added German template variant: `quarto use template michaelaye/fub-letter/german`
  - Added English template variant: `quarto use template michaelaye/fub-letter/english`
  - Each variant includes pre-filled example text in the appropriate language
  - Generic template still available at root: `quarto use template michaelaye/fub-letter`

- **1.1.1** (2026-01-20): Language-aware subject labels
  - Subject line label now changes based on language
  - German letters: "Betreff:" instead of "Subject:"
  - English letters: "Subject:" (unchanged)

- **1.1.0** (2026-01-20): Language-aware defaults
  - Added Lua filter for language detection
  - Implemented automatic greeting/closing defaults based on `letter-lang`
  - German defaults: "Sehr geehrte Damen und Herren," / "Mit freundlichen Grüßen"
  - English defaults: "Dear Sir or Madam," / "Sincerely,"
  - User-provided values override language defaults

- **1.0.0** (2026-01-18): Initial release
  - FU Berlin corporate design
  - English and German support
  - Clean extension structure
  - Proper header alignment
