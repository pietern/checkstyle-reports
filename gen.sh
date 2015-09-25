#!/bin/sh

cat <<EOS
<html>
<body>
EOS

cat <<EOS
<h3>Reports</h3>
<ul>
EOS

for index in $(find . -wholename '*/site/index.html'); do
  echo "<li><a href="${index}">${index}</a></li>"
done

cat <<EOS
</ul>
EOS

cat <<EOS
</body>
</html>
EOS
