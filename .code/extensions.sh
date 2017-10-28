EXTENSIONS=(
  "cssho.vscode-svgviewer" \
  "Zignd.html-css-class-completion" \
  "eg2.tslint" \
  "kamikillerto.vscode-colorize" \
  "shinnn.stylelint" \
  "zhuangtongfa.Material-theme" \
)

for VARIANT in "code" \
               "code-insiders"
do
  if hash $VARIANT 2>/dev/null; then
    echo "Installing extensions for $VARIANT"
    for EXTENSION in ${EXTENSIONS[@]}
    do
      $VARIANT --install-extension $EXTENSION
    done
  fi
done
