name             "martinisoft-datadog"
maintainer       "Aaron Kalin"
maintainer_email "akalin@martinisoftware.com"
license          "Apache 2.0"
description      "Installs/Configures martinisoft-datadog"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.1.0"

supports "ubuntu"

depends "apt"
depends "datadog"
