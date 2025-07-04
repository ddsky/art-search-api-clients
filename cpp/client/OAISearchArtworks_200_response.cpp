/**
 * Art Search API
 * Art Search let's you search and discover over one million pieces of historic art.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@artsearch.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchArtworks_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchArtworks_200_response::OAISearchArtworks_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchArtworks_200_response::OAISearchArtworks_200_response() {
    this->initializeModel();
}

OAISearchArtworks_200_response::~OAISearchArtworks_200_response() {}

void OAISearchArtworks_200_response::initializeModel() {

    m_available_isSet = false;
    m_available_isValid = false;

    m_number_isSet = false;
    m_number_isValid = false;

    m_offset_isSet = false;
    m_offset_isValid = false;

    m_artworks_isSet = false;
    m_artworks_isValid = false;
}

void OAISearchArtworks_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchArtworks_200_response::fromJsonObject(QJsonObject json) {

    m_available_isValid = ::OpenAPI::fromJsonValue(m_available, json[QString("available")]);
    m_available_isSet = !json[QString("available")].isNull() && m_available_isValid;

    m_number_isValid = ::OpenAPI::fromJsonValue(m_number, json[QString("number")]);
    m_number_isSet = !json[QString("number")].isNull() && m_number_isValid;

    m_offset_isValid = ::OpenAPI::fromJsonValue(m_offset, json[QString("offset")]);
    m_offset_isSet = !json[QString("offset")].isNull() && m_offset_isValid;

    m_artworks_isValid = ::OpenAPI::fromJsonValue(m_artworks, json[QString("artworks")]);
    m_artworks_isSet = !json[QString("artworks")].isNull() && m_artworks_isValid;
}

QString OAISearchArtworks_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchArtworks_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_available_isSet) {
        obj.insert(QString("available"), ::OpenAPI::toJsonValue(m_available));
    }
    if (m_number_isSet) {
        obj.insert(QString("number"), ::OpenAPI::toJsonValue(m_number));
    }
    if (m_offset_isSet) {
        obj.insert(QString("offset"), ::OpenAPI::toJsonValue(m_offset));
    }
    if (m_artworks.size() > 0) {
        obj.insert(QString("artworks"), ::OpenAPI::toJsonValue(m_artworks));
    }
    return obj;
}

qint32 OAISearchArtworks_200_response::getAvailable() const {
    return m_available;
}
void OAISearchArtworks_200_response::setAvailable(const qint32 &available) {
    m_available = available;
    m_available_isSet = true;
}

bool OAISearchArtworks_200_response::is_available_Set() const{
    return m_available_isSet;
}

bool OAISearchArtworks_200_response::is_available_Valid() const{
    return m_available_isValid;
}

qint32 OAISearchArtworks_200_response::getNumber() const {
    return m_number;
}
void OAISearchArtworks_200_response::setNumber(const qint32 &number) {
    m_number = number;
    m_number_isSet = true;
}

bool OAISearchArtworks_200_response::is_number_Set() const{
    return m_number_isSet;
}

bool OAISearchArtworks_200_response::is_number_Valid() const{
    return m_number_isValid;
}

qint32 OAISearchArtworks_200_response::getOffset() const {
    return m_offset;
}
void OAISearchArtworks_200_response::setOffset(const qint32 &offset) {
    m_offset = offset;
    m_offset_isSet = true;
}

bool OAISearchArtworks_200_response::is_offset_Set() const{
    return m_offset_isSet;
}

bool OAISearchArtworks_200_response::is_offset_Valid() const{
    return m_offset_isValid;
}

QList<OAISearchArtworks_200_response_artworks_inner> OAISearchArtworks_200_response::getArtworks() const {
    return m_artworks;
}
void OAISearchArtworks_200_response::setArtworks(const QList<OAISearchArtworks_200_response_artworks_inner> &artworks) {
    m_artworks = artworks;
    m_artworks_isSet = true;
}

bool OAISearchArtworks_200_response::is_artworks_Set() const{
    return m_artworks_isSet;
}

bool OAISearchArtworks_200_response::is_artworks_Valid() const{
    return m_artworks_isValid;
}

bool OAISearchArtworks_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_available_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_offset_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_artworks.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchArtworks_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
