[33mcommit 2f65e3c6cd8a06e2025ccfb43fc92d1b97c1b3d1[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: NatanSantos <natansantos888@hotmail.com>
Date:   Mon Apr 13 19:19:16 2020 -0300

    Envio inicial

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..4d29575[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32m# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.[m
[32m+[m
[32m+[m[32m# dependencies[m
[32m+[m[32m/node_modules[m
[32m+[m[32m/.pnp[m
[32m+[m[32m.pnp.js[m
[32m+[m
[32m+[m[32m# testing[m
[32m+[m[32m/coverage[m
[32m+[m
[32m+[m[32m# production[m
[32m+[m[32m/build[m
[32m+[m
[32m+[m[32m# misc[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m.env.local[m
[32m+[m[32m.env.development.local[m
[32m+[m[32m.env.test.local[m
[32m+[m[32m.env.production.local[m
[32m+[m
[32m+[m[32mnpm-debug.log*[m
[32m+[m[32myarn-debug.log*[m
[32m+[m[32myarn-error.log*[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mnew file mode 100644[m
[1mindex 0000000..ec01e0d[m
[1m--- /dev/null[m
[1m+++ b/package-lock.json[m
[36m@@ -0,0 +1,15074 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "f",[m
[32m+[m[32m  "version": "0.1.0",[m
[32m+[m[32m  "lockfileVersion": 1,[m
[32m+[m[32m  "requires": true,[m
[32m+[m[32m  "dependencies": {[m
[32m+[m[32m    "@babel/code-frame": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-a9gxpmdXtZEInkCSHUJDLHZVBgb1QS0jhss4cPP93EW7s+uC5bikET2twEF3KV+7rDblJcmNvTR7VJejqd2C2g==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/highlight": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/compat-data": {[m
[32m+[m[32m      "version": "7.9.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/compat-data/-/compat-data-7.9.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-zeFQrr+284Ekvd9e7KAX954LkapWiOmQtsfHirhxqfdlX6MEC32iRE+pqUGlYIBchdevaCwvzxWGSy/YBNI85g==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "browserslist": "^4.9.1",[m
[32m+[m[32m        "invariant": "^2.2.4",[m
[32m+[m[32m        "semver": "^5.5.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": {[m
[32m+[m[32m          "version": "5.7.1",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/semver/-/semver-5.7.1.tgz",[m
[32m+[m[32m          "integrity": "sha512-sauaDf/PZdVgrLTNYHRtpXa1iRiKcaebiKQ1BJdpQlWH2lCvexQdX55snPFyK7QzpudqbCI0qXFfOasHdyNDGQ=="[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/core": {[m
[32m+[m[32m      "version": "7.9.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/core/-/core-7.9.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-kWc7L0fw1xwvI0zi8OKVBuxRVefwGOrKSQMvrQ3dW+bIIavBY3/NpXmpjMy7bQnLgwgzWQZ8TlM57YHpHNHz4w==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/code-frame": "^7.8.3",[m
[32m+[m[32m        "@babel/generator": "^7.9.0",[m
[32m+[m[32m        "@babel/helper-module-transforms": "^7.9.0",[m
[32m+[m[32m        "@babel/helpers": "^7.9.0",[m
[32m+[m[32m        "@babel/parser": "^7.9.0",[m
[32m+[m[32m        "@babel/template": "^7.8.6",[m
[32m+[m[32m        "@babel/traverse": "^7.9.0",[m
[32m+[m[32m        "@babel/types": "^7.9.0",[m
[32m+[m[32m        "convert-source-map": "^1.7.0",[m
[32m+[m[32m        "debug": "^4.1.0",[m
[32m+[m[32m        "gensync": "^1.0.0-beta.1",[m
[32m+[m[32m        "json5": "^2.1.2",[m
[32m+[m[32m        "lodash": "^4.17.13",[m
[32m+[m[32m        "resolve": "^1.3.2",[m
[32m+[m[32m        "semver": "^5.4.1",[m
[32m+[m[32m        "source-map": "^0.5.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": {[m
[32m+[m[32m          "version": "5.7.1",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/semver/-/semver-5.7.1.tgz",[m
[32m+[m[32m          "integrity": "sha512-sauaDf/PZdVgrLTNYHRtpXa1iRiKcaebiKQ1BJdpQlWH2lCvexQdX55snPFyK7QzpudqbCI0qXFfOasHdyNDGQ=="[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/generator": {[m
[32m+[m[32m      "version": "7.9.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/generator/-/generator-7.9.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-RpxM252EYsz9qLUIq6F7YJyK1sv0wWDBFuztfDGWaQKzHjqDHysxSiRUpA/X9jmfqo+WzkAVKFaUily5h+gDCQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.9.0",[m
[32m+[m[32m        "jsesc": "^2.5.1",[m
[32m+[m[32m        "lodash": "^4.17.13",[m
[32m+[m[32m        "source-map": "^0.5.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-annotate-as-pure": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-annotate-as-pure/-/helper-annotate-as-pure-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-6o+mJrZBxOoEX77Ezv9zwW7WV8DdluouRKNY/IR5u/YTMuKHgugHOzYWlYvYLpLA9nPsQCAAASpCIbjI9Mv+Uw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-builder-binary-assignment-operator-visitor": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-builder-binary-assignment-operator-visitor/-/helper-builder-binary-assignment-operator-visitor-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-5eFOm2SyFPK4Rh3XMMRDjN7lBH0orh3ss0g3rTYZnBQ+r6YPj7lgDyCvPphynHvUrobJmeMignBr6Acw9mAPlw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-explode-assignable-expression": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-builder-react-jsx": {[m
[32m+[m[32m      "version": "7.9.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-builder-react-jsx/-/helper-builder-react-jsx-7.9.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-weiIo4gaoGgnhff54GQ3P5wsUQmnSwpkvU0r6ZHq6TzoSzKy4JxHEgnxNytaKbov2a9z/CVNyzliuCOUPEX3Jw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.9.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-builder-react-jsx-experimental": {[m
[32m+[m[32m      "version": "7.9.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-builder-react-jsx-experimental/-/helper-builder-react-jsx-experimental-7.9.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-3xJEiyuYU4Q/Ar9BsHisgdxZsRlsShMe90URZ0e6przL26CCs8NJbDoxH94kKT17PcxlMhsCAwZd90evCo26VQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-module-imports": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.9.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-compilation-targets": {[m
[32m+[m[32m      "version": "7.8.7",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-compilation-targets/-/helper-compilation-targets-7.8.7.tgz",[m
[32m+[m[32m      "integrity": "sha512-4mWm8DCK2LugIS+p1yArqvG1Pf162upsIsjE7cNBjez+NjliQpVhj20obE520nao0o14DaTnFJv+Fw5a0JpoUw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/compat-data": "^7.8.6",[m
[32m+[m[32m        "browserslist": "^4.9.1",[m
[32m+[m[32m        "invariant": "^2.2.4",[m
[32m+[m[32m        "levenary": "^1.1.1",[m
[32m+[m[32m        "semver": "^5.5.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": {[m
[32m+[m[32m          "version": "5.7.1",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/semver/-/semver-5.7.1.tgz",[m
[32m+[m[32m          "integrity": "sha512-sauaDf/PZdVgrLTNYHRtpXa1iRiKcaebiKQ1BJdpQlWH2lCvexQdX55snPFyK7QzpudqbCI0qXFfOasHdyNDGQ=="[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-create-class-features-plugin": {[m
[32m+[m[32m      "version": "7.8.6",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-create-class-features-plugin/-/helper-create-class-features-plugin-7.8.6.tgz",[m
[32m+[m[32m      "integrity": "sha512-klTBDdsr+VFFqaDHm5rR69OpEQtO2Qv8ECxHS1mNhJJvaHArR6a1xTf5K/eZW7eZpJbhCx3NW1Yt/sKsLXLblg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-function-name": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-member-expression-to-functions": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-optimise-call-expression": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-replace-supers": "^7.8.6",[m
[32m+[m[32m        "@babel/helper-split-export-declaration": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-create-regexp-features-plugin": {[m
[32m+[m[32m      "version": "7.8.8",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-create-regexp-features-plugin/-/helper-create-regexp-features-plugin-7.8.8.tgz",[m
[32m+[m[32m      "integrity": "sha512-LYVPdwkrQEiX9+1R29Ld/wTrmQu1SSKYnuOk3g0CkcZMA1p0gsNxJFj/3gBdaJ7Cg0Fnek5z0DsMULePP7Lrqg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-regex": "^7.8.3",[m
[32m+[m[32m        "regexpu-core": "^4.7.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-define-map": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-define-map/-/helper-define-map-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-PoeBYtxoZGtct3md6xZOCWPcKuMuk3IHhgxsRRNtnNShebf4C8YonTSblsK4tvDbm+eJAw2HAPOfCr+Q/YRG/g==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-function-name": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.8.3",[m
[32m+[m[32m        "lodash": "^4.17.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-explode-assignable-expression": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-explode-assignable-expression/-/helper-explode-assignable-expression-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-N+8eW86/Kj147bO9G2uclsg5pwfs/fqqY5rwgIL7eTBklgXjcOJ3btzS5iM6AitJcftnY7pm2lGsrJVYLGjzIw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/traverse": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-function-name": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-function-name/-/helper-function-name-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-BCxgX1BC2hD/oBlIFUgOCQDOPV8nSINxCwM3o93xP4P9Fq6aV5sgv2cOOITDMtCfQ+3PvHp3l689XZvAM9QyOA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-get-function-arity": "^7.8.3",[m
[32m+[m[32m        "@babel/template": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-get-function-arity": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-get-function-arity/-/helper-get-function-arity-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-FVDR+Gd9iLjUMY1fzE2SR0IuaJToR4RkCDARVfsBBPSP53GEqSFjD8gNyxg246VUyc/ALRxFaAK8rVG7UT7xRA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-hoist-variables": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-hoist-variables/-/helper-hoist-variables-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-ky1JLOjcDUtSc+xkt0xhYff7Z6ILTAHKmZLHPxAhOP0Nd77O+3nCsd6uSVYur6nJnCI029CrNbYlc0LoPfAPQg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-member-expression-to-functions": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-member-expression-to-functions/-/helper-member-expression-to-functions-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-fO4Egq88utkQFjbPrSHGmGLFqmrshs11d46WI+WZDESt7Wu7wN2G2Iu+NMMZJFDOVRHAMIkB5SNh30NtwCA7RA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-module-imports": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-module-imports/-/helper-module-imports-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-R0Bx3jippsbAEtzkpZ/6FIiuzOURPcMjHp+Z6xPe6DtApDJx+w7UYyOLanZqO8+wKR9G10s/FmHXvxaMd9s6Kg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-module-transforms": {[m
[32m+[m[32m      "version": "7.9.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-module-transforms/-/helper-module-transforms-7.9.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-0FvKyu0gpPfIQ8EkxlrAydOWROdHpBmiCiRwLkUiBGhCUPRRbVD2/tm3sFr/c/GWFrQ/ffutGUAnx7V0FzT2wA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-module-imports": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-replace-supers": "^7.8.6",[m
[32m+[m[32m        "@babel/helper-simple-access": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-split-export-declaration": "^7.8.3",[m
[32m+[m[32m        "@babel/template": "^7.8.6",[m
[32m+[m[32m        "@babel/types": "^7.9.0",[m
[32m+[m[32m        "lodash": "^4.17.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-optimise-call-expression": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-optimise-call-expression/-/helper-optimise-call-expression-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-Kag20n86cbO2AvHca6EJsvqAd82gc6VMGule4HwebwMlwkpXuVqrNRj6CkCV2sKxgi9MyAUnZVnZ6lJ1/vKhHQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-plugin-utils": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-plugin-utils/-/helper-plugin-utils-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-j+fq49Xds2smCUNYmEHF9kGNkhbet6yVIBp4e6oeQpH1RUs/Ir06xUKzDjDkGcaaokPiTNs2JBWHjaE4csUkZQ=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-regex": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-regex/-/helper-regex-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-BWt0QtYv/cg/NecOAZMdcn/waj/5P26DR4mVLXfFtDokSR6fyuG0Pj+e2FqtSME+MqED1khnSMulkmGl8qWiUQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "lodash": "^4.17.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-remap-async-to-generator": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-remap-async-to-generator/-/helper-remap-async-to-generator-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-kgwDmw4fCg7AVgS4DukQR/roGp+jP+XluJE5hsRZwxCYGg+Rv9wSGErDWhlI90FODdYfd4xG4AQRiMDjjN0GzA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-wrap-function": "^7.8.3",[m
[32m+[m[32m        "@babel/template": "^7.8.3",[m
[32m+[m[32m        "@babel/traverse": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-replace-supers": {[m
[32m+[m[32m      "version": "7.8.6",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-replace-supers/-/helper-replace-supers-7.8.6.tgz",[m
[32m+[m[32m      "integrity": "sha512-PeMArdA4Sv/Wf4zXwBKPqVj7n9UF/xg6slNRtZW84FM7JpE1CbG8B612FyM4cxrf4fMAMGO0kR7voy1ForHHFA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-member-expression-to-functions": "^7.8.3",[m
[32m+[m[32m        "@babel/helper-optimise-call-expression": "^7.8.3",[m
[32m+[m[32m        "@babel/traverse": "^7.8.6",[m
[32m+[m[32m        "@babel/types": "^7.8.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-simple-access": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-simple-access/-/helper-simple-access-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-VNGUDjx5cCWg4vvCTR8qQ7YJYZ+HBjxOgXEl7ounz+4Sn7+LMD3CFrCTEU6/qXKbA2nKg21CwhhBzO0RpRbdCw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/template": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-split-export-declaration": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-split-export-declaration/-/helper-split-export-declaration-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-3x3yOeyBhW851hroze7ElzdkeRXQYQbFIb7gLK1WQYsw2GWDay5gAJNw1sWJ0VFP6z5J1whqeXH/WCdCjZv6dA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-validator-identifier": {[m
[32m+[m[32m      "version": "7.9.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.9.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-6G8bQKjOh+of4PV/ThDm/rRqlU7+IGoJuofpagU5GlEl29Vv0RGqqt86ZGRV8ZuSOY3o+8yXl5y782SMcG7SHw=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-wrap-function": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-wrap-function/-/helper-wrap-function-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-LACJrbUET9cQDzb6kG7EeD7+7doC3JNvUgTEQOx2qaO1fKlzE/Bf05qs9w1oXQMmXlPO65lC3Tq9S6gZpTErEQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-function-name": "^7.8.3",[m
[32m+[m[32m        "@babel/template": "^7.8.3",[m
[32m+[m[32m        "@babel/traverse": "^7.8.3",[m
[32m+[m[32m        "@babel/types": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helpers": {[m
[32m+[m[32m      "version": "7.9.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helpers/-/helpers-7.9.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-JwLvzlXVPjO8eU9c/wF9/zOIN7X6h8DYf7mG4CiFRZRvZNKEF5dQ3H3V+ASkHoIB3mWhatgl5ONhyqHRI6MppA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/template": "^7.8.3",[m
[32m+[m[32m        "@babel/traverse": "^7.9.0",[m
[32m+[m