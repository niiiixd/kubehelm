KubeHelm
=======

# What is KubeHelm
A minimalist [Debian-based](https://hub.docker.com/r/niiiix/debian-mini) image built specifically to be used as a base image for `helm` and `kubectl`

# Use KubeHelm
You can use the image directly, e.g.
```
$ docker run --rm -it niiiix/kubehelm:latest
```

There are [tags](https://hub.docker.com/r/niiiix/kubehelm/tags/) for the different Debian releases and platforms.
```
$ docker run --rm -it niiiix/kubehelm:bullseye
```
```
$ docker run --rm -it niiiix/kubehelm:latest-amd64
```

The images are built daily and have the security release enabled, so will contain any security updates released more than 24 hours ago.

You can also use the images as a base for your own `Dockerfile`:
```
FROM niiiix/kubehelm:bullseye
```

# Compatibility
The image points to the Debian archive, so you are free to install the packages from there that you need. However, because some `Essential` packages have been removed, they may not always install or work correctly.

In those cases, you can figure out which package is needed and manually specify to install it along with your desired packages. Please feel free to submit an issue request so we can reach out and help you quickly.

# Security
KubeHelm is based on Debian and relies on its security updates. The images are built daily and have the security release enabled, so will contain any security updates released more than 24 hours ago.

Debian [does not fix every CVE that affects their packages](https://www.debian.org/security/faq#cvedsa), which means that CVE scanners may detect unfixed vulnerabilities in KubeHelm images. In those cases, you can check the [Debian security tracker](https://security-tracker.debian.org/tracker/) to see whether Debian intends to release an update to fix it.

To keep compatibility with Debian, we will not patch any vulnerabilities in KubeHelm directly. If Debian does not fix the CVE, it will remain in KubeHelm. If you find a vulnerability that is fixed in Debian but not in the latest images of KubeHelm, then please file an issue, as that is not intentional.

# Contributing
We'd love for you to contribute to this image. You can request new features by creating an [issue](https://github.com/niiiixd/kubehelm/issues) or submit a [pull request](https://github.com/niiiixd/kubehelm/pulls) with your contribution.

# License
Copyright &copy; 2022 Sadegh Khademi

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

Author Information
------------------

* **Sadegh Khademi** - *SRE/Cloud Engineer* - Sadegh Khademi [website](https://sadeghkhademi.com) - Twitter [@niiiixd](https://twitter.com/niiiixd) - Email Address [Email](mailto:khademi.sadegh@gmail.com?subject=[GitHub]%20ansible%20zabbix%20agent)
