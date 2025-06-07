# Quarto Master Template

Ein umfassendes Quarto-Template das alle wichtigen Features demonstriert und als wiederverwendbare Basis für neue Projekte dient. Rendert mit einem Befehl nach HTML, PDF und Word mit einheitlichem Corporate Design.

## Struktur

```
quarto-master-template/
├── README.md
├── master-template.qmd    # Haupt-Template mit allem Content
├── src/
│   ├── logo.png          # Gemeinsame Assets
│   ├── html/             # CSS/SCSS für HTML
│   ├── pdf/              # Typst-Templates für PDF  
│   └── docx/             # Word-Referenzdokument
└── docs/                 # GitHub Pages Output
```

## Verwendung

```bash
# Alle Formate rendern
quarto render master-template.qmd

# Als Template nutzen
quarto use template your-username/quarto-master-template
```
