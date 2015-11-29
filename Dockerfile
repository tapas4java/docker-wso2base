# ------------------------------------------------------------------------
#
# Copyright 2012-2015 Anitech Consulting Services Pvt Ltd. (http://anitechcs.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
#
# ------------------------------------------------------------------------

FROM ubuntu:14.04

MAINTAINER  Tapas Jena [tapas.friends@gmail.com]

# Version Configuration
ENV JAVA_VERSION 1.8.0_65

# Dependencies
RUN apt-get update
RUN sudo apt-get install zip unzip

WORKDIR "/opt"

# JDK Setup
COPY Packages/jdk${JAVA_VERSION}.zip /opt
RUN unzip /opt/jdk${JAVA_VERSION}.zip
ENV JAVA_HOME /opt/jdk${JAVA_VERSION}


