# 📸 Guía para Tomar Capturas de Pantalla

## 📋 Lista de Capturas Necesarias

Para completar la documentación del proyecto, necesitas tomar las siguientes capturas de pantalla:

### 🏠 Navegación Principal
- **Archivo**: `main_navigation.png`
- **Descripción**: Pantalla principal mostrando la navegación inferior con las 5 pestañas
- **Qué capturar**: Vista completa de la app con el BottomNavigationBar visible

### 📝 TextFields (2 capturas)
1. **Archivo**: `textfields_screen.png`
   - **Descripción**: Vista general de la pantalla de TextFields
   - **Qué capturar**: Todos los ejemplos de campos de texto visibles

2. **Archivo**: `textfields_validation.png`
   - **Descripción**: Ejemplo de validación de formulario
   - **Qué capturar**: Formulario con errores de validación mostrados o formulario válido

### 🎨 Botones (2 capturas)
1. **Archivo**: `buttons_screen.png`
   - **Descripción**: Vista general de todos los tipos de botones
   - **Qué capturar**: Diferentes tipos de botones y estilos

2. **Archivo**: `buttons_interactions.png`
   - **Descripción**: Ejemplo de interacción con botones
   - **Qué capturar**: Contador del FAB en acción o mensaje de botón presionado

### ☑️ Elementos de Selección (2 capturas)
1. **Archivo**: `selection_elements.png`
   - **Descripción**: Vista de checkboxes, radio buttons, switches
   - **Qué capturar**: Parte superior con checkboxes y radio buttons

2. **Archivo**: `selection_interactions.png`
   - **Descripción**: Sliders, dropdown y selección múltiple
   - **Qué capturar**: Parte inferior con sliders y chips de selección

### 📋 Listas (2 capturas)
1. **Archivo**: `lists_screen.png`
   - **Descripción**: ListView básico y lista de contactos
   - **Qué capturar**: Ejemplos de listas verticales

2. **Archivo**: `lists_gridview.png`
   - **Descripción**: GridView de productos
   - **Qué capturar**: Vista de cuadrícula con productos

### ℹ️ Elementos Informativos (2 capturas)
1. **Archivo**: `info_elements.png`
   - **Descripción**: Ejemplos de texto, iconos y cards
   - **Qué capturar**: Parte superior con estilos de texto y cards

2. **Archivo**: `info_progress.png`
   - **Descripción**: Indicadores de progreso en acción
   - **Qué capturar**: Progress indicators funcionando (presiona "Iniciar")

## 🛠️ Instrucciones Técnicas

### Para Android/iOS (Emulador o Dispositivo)
1. **Ejecutar la app**: `flutter run`
2. **Tomar captura**: 
   - Android: `Ctrl + S` en el emulador o usar `flutter screenshot`
   - iOS: `Cmd + S` en el simulador

### Para Web
1. **Ejecutar**: `flutter run -d chrome`
2. **Tomar captura**: Usar herramientas de desarrollador del navegador o `F12 > Device Toolbar`

### Para Desktop
1. **Ejecutar**: `flutter run -d windows` (o macos/linux)
2. **Tomar captura**: Herramienta de recorte del sistema operativo

### Usando Flutter CLI
```bash
# Tomar captura directamente con Flutter
flutter screenshot --output=screenshots/nombre_archivo.png
```

## 📏 Especificaciones de las Capturas

- **Resolución recomendada**: 300-400px de ancho para móvil
- **Formato**: PNG para mejor calidad
- **Orientación**: Vertical (portrait) para móvil
- **Calidad**: Alta resolución, texto legible

## 📝 Proceso Recomendado

1. **Ejecutar la aplicación** en el dispositivo/emulador de tu preferencia
2. **Navegar a cada pantalla** usando la barra de navegación inferior
3. **Interactuar con los elementos** para mostrar funcionalidades
4. **Tomar las capturas** según la lista anterior
5. **Guardar las imágenes** en la carpeta `screenshots/` con los nombres exactos
6. **Verificar** que todas las imágenes se muestren correctamente en el README

## ✅ Checklist de Capturas

- [ ] `main_navigation.png` - Navegación principal
- [ ] `textfields_screen.png` - Vista general de TextFields
- [ ] `textfields_validation.png` - Validación de TextFields
- [ ] `buttons_screen.png` - Vista general de Botones
- [ ] `buttons_interactions.png` - Interacciones con Botones
- [ ] `selection_elements.png` - Elementos de Selección (parte 1)
- [ ] `selection_interactions.png` - Elementos de Selección (parte 2)
- [ ] `lists_screen.png` - Listas básicas
- [ ] `lists_gridview.png` - GridView de productos
- [ ] `info_elements.png` - Elementos informativos (parte 1)
- [ ] `info_progress.png` - Indicadores de progreso

## 🔧 Troubleshooting

**Si las capturas se ven muy grandes o pequeñas:**
- Ajusta el tamaño del emulador/ventana antes de capturar
- Usa herramientas de edición para redimensionar si es necesario

**Si el texto no se ve bien:**
- Asegúrate de usar alta resolución
- Evita tomar capturas cuando hay animaciones en progreso

**Para mejor calidad visual:**
- Usa un emulador con densidad de píxeles alta
- Captura en modo claro (no modo oscuro) para mejor contraste