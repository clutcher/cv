# Markdown CV/Resume

## From LaTeX to Markdown

In the past, I utilized LaTeX to create my CV using the [modern-cv template](https://github.com/xdanaux/moderncv). This approach was effective during my university years, as I worked with LaTeX on a daily basis. However, after 15 years, I found it increasingly challenging to maintain my CV in LaTeX due to infrequent use.

To simplify the process, I decided to switch to Markdown. This allows me to store my CV in a straightforward Markdown format and easily convert it to PDF using just Docker on my machine. While LaTeX continues to be used for styling, I rarely make changes to the styling itself. 

## How to Use

This repository makes it easy to convert your Markdown-based resume to a PDF in just a few steps:

1. **Update** the `resume.md` file with your own content using Markdown syntax.
2. **Run** the conversion script:
   ```bash
   ./convert.sh
   ```
3. **Get your PDF** By default, the script will generate a PDF named `igor_zarvanskyi_sap_commerce.pdf` in the root directory. You can modify the output file name by editing the `convert.sh` script. Simply change the `OUTPUT_FILE_NAME` variable to your preferred name.

## Implementation Details

### Files in the Repository

- **`resume.md`**: The Markdown file containing the resume content (this file should be updated with your own information).
- **`convert.sh`**: A shell script that handles the conversion from `resume.md` to PDF using a Dockerized Pandoc image, with an option to customize the output file name.
- **`resume-style.tex`**: A LaTeX template for customizing the style of the generated PDF.

### Conversion Process

1. The `convert.sh` script runs a Docker container using the `pandoc/extra` image, which has Pandoc and LaTeX pre-installed.
2. The script mounts the current directory (`$PWD`) into the Docker container, allowing Pandoc to access `resume.md` and `resume-style.tex`.
3. Pandoc uses the custom LaTeX template (`resume-style.tex`) to format the content of `resume.md`.
4. The final output is a PDF file (default: `igor_zarvanskyi_sap_commerce.pdf` or your custom file name) generated with `lualatex` as the PDF engine.

## LaTeX Template (`resume-style.tex`)

### Headers/Sections

The LaTeX template used in this repository defines a clean and professional look for the generated PDF resume. It modifies the appearance of different Markdown elements as follows:

- **First-Level Headers**: Rendered on the right side of the page in an accent color, used for the name and contact information.
- **Second-Level Headers**: Aligned to the left and underlined across the entire line. These are used for the main sections of the resume, such as "Work Experience," "Education," and "Skills." The underlining adds visual separation between sections.
- **Third-Level Headers**: Used for subsections, generally representing specific work experiences or company names.

- **Italicized Text**: When italicized, this text is rendered on the right side of the page and is typically used for additional information, such as employment dates.
- **Bold Text**: Bold text is rendered with an accent color, mainly used for job titles within third-level headers.

### Color and Styling

The template employs a carefully chosen color palette to enhance readability and aesthetics, primarily inspired by the modern-cv LaTeX template:

- **Accent Color**: A vibrant blue is used for first-level headers, bullet points, and job titles, creating visual interest.
- **Main Font Color**: A dark grey is used for the primary body text, ensuring clarity and ease of reading.
- **Additional Font Color**: A lighter shade of grey is used for secondary information, providing subtle contrast without distracting from the main content.

- **Bullet List Styling**: Bullet points are styled with small, colored bullets that match the accent color, keeping the content organized.
- **Hyperlinks**: Underlined hyperlinks maintain the main font color, ensuring they are noticeable without overwhelming the text.
- **Spacing and Margins**: Generous margins (1.5 cm) and carefully adjusted spacing between elements enhance the overall layout, making it visually appealing.

## License

Licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0).
