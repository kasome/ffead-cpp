/*
	Copyright 2009-2020, Sumeet Chhetri

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/
/*
 * TeBkFortune.cpp
 *
 *  Created on: 11-Mar-2015
 *      Author: sumeetc
 */

#include "TeBkFortune.h"

int TeBkFortune::getId() const {
	return id;
}

void TeBkFortune::setId(int id) {
	this->id = id;
}

const std::string& TeBkFortune::getMessage() const {
	return message;
}

void TeBkFortune::setMessage(const std::string& message) {
	this->message = message;
}

TeBkFortune::TeBkFortune() {
	id = 0;
}

TeBkFortune::~TeBkFortune() {
	// TODO Auto-generated destructor stub
}

bool TeBkFortune::operator < (const TeBkFortune& other) const {
	return message.compare(other.message)<0;
}
