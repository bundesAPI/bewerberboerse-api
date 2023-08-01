# Bewerberboerse.DefaultApi

All URIs are relative to *https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bewerberboerse**](DefaultApi.md#bewerberboerse) | **GET** /pc/v1/bewerber | Bewerberbörse
[**bewerberdetails**](DefaultApi.md#bewerberdetails) | **GET** /pc/v1/bewerberdetails/{referenznummer} | 


# **bewerberboerse**
> {str: (bool, date, datetime, dict, float, int, list, str, none_type)} bewerberboerse()

Bewerberbörse

Die Bewerberbörse ermöglicht es, Bewerber*innen mit verschiedenen GET-Parametern zu filtern. 

### Example

* Api Key Authentication (APIKeyHeaders):

```python
import time
from deutschland import Bewerberboerse
from deutschland.Bewerberboerse.api import default_api
from pprint import pprint
# Defining the host is optional and defaults to https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service
# See configuration.py for a list of all supported configuration parameters.
configuration = Bewerberboerse.Configuration(
    host = "https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeaders
configuration.api_key['APIKeyHeaders'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeaders'] = 'Bearer'

# Enter a context with an instance of the API client
with Bewerberboerse.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    was = "Wissenschaftlicher Mitarbeiter" # str | Beruf, Kenntnisse, Sprachen, etc. (optional)
    ausbildungsart = "au" # str | Ausbildungsart - au=Ausbildung, dsa=Duales Studium (ausbildungsintegrierend), dsp=Duales Studium (praxisintegrierend). (optional)
    wo = "Feucht" # str | Ort, PLZ, Bundesland, Land, etc. (optional)
    umkreis = 0 # int | Umkreis - 0=ganzer Ort; 10=10km; 15=15km; 20=20km; 50=50km; 100=100km; 200=200km. (optional)
    angebotsart = "ar" # str | Angebotsart - ar=Arbeitskräfte; au=Auszubildende/Duales Studium; pt=Praktikanten/Trainees; se=Selbstständige. (optional)
    arbeitszeit = "vz" # str | Arbeitszeit - vz=Vollzeit; tz=Teilzeit; snw=Schicht,Nacht,Wochenende; ht=Heim-/Telearbeit; mj=Minijob. (optional)
    berufserfahrung = "mb" # str | Berufserfahrung - be=Berufseinsteiger*innen; mb=Mit Berufserfahrung. (optional)
    vertragsart = "ub" # str | Vertragsart - be=Befristet; ub=Unbefristet. (optional)
    behinderung = "an" # str | Behinderung - an=Nur Schwerbehinderte oder ihnen gleichgestellte Bewerber*innen anzeigen. (optional) if omitted the server will use the default value of "an"
    page = 0 # int | Ergebnissseite (optional)
    size = 25 # int | Anzahl von Ergebnissen (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Bewerberbörse
        api_response = api_instance.bewerberboerse(was=was, ausbildungsart=ausbildungsart, wo=wo, umkreis=umkreis, angebotsart=angebotsart, arbeitszeit=arbeitszeit, berufserfahrung=berufserfahrung, vertragsart=vertragsart, behinderung=behinderung, page=page, size=size)
        pprint(api_response)
    except Bewerberboerse.ApiException as e:
        print("Exception when calling DefaultApi->bewerberboerse: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **was** | **str**| Beruf, Kenntnisse, Sprachen, etc. | [optional]
 **ausbildungsart** | **str**| Ausbildungsart - au&#x3D;Ausbildung, dsa&#x3D;Duales Studium (ausbildungsintegrierend), dsp&#x3D;Duales Studium (praxisintegrierend). | [optional]
 **wo** | **str**| Ort, PLZ, Bundesland, Land, etc. | [optional]
 **umkreis** | **int**| Umkreis - 0&#x3D;ganzer Ort; 10&#x3D;10km; 15&#x3D;15km; 20&#x3D;20km; 50&#x3D;50km; 100&#x3D;100km; 200&#x3D;200km. | [optional]
 **angebotsart** | **str**| Angebotsart - ar&#x3D;Arbeitskräfte; au&#x3D;Auszubildende/Duales Studium; pt&#x3D;Praktikanten/Trainees; se&#x3D;Selbstständige. | [optional]
 **arbeitszeit** | **str**| Arbeitszeit - vz&#x3D;Vollzeit; tz&#x3D;Teilzeit; snw&#x3D;Schicht,Nacht,Wochenende; ht&#x3D;Heim-/Telearbeit; mj&#x3D;Minijob. | [optional]
 **berufserfahrung** | **str**| Berufserfahrung - be&#x3D;Berufseinsteiger*innen; mb&#x3D;Mit Berufserfahrung. | [optional]
 **vertragsart** | **str**| Vertragsart - be&#x3D;Befristet; ub&#x3D;Unbefristet. | [optional]
 **behinderung** | **str**| Behinderung - an&#x3D;Nur Schwerbehinderte oder ihnen gleichgestellte Bewerber*innen anzeigen. | [optional] if omitted the server will use the default value of "an"
 **page** | **int**| Ergebnissseite | [optional]
 **size** | **int**| Anzahl von Ergebnissen | [optional]

### Return type

**{str: (bool, date, datetime, dict, float, int, list, str, none_type)}**

### Authorization

[APIKeyHeaders](../README.md#APIKeyHeaders)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bewerberdetails**
> {str: (bool, date, datetime, dict, float, int, list, str, none_type)} bewerberdetails(referenznummer)



Details zu einzelnen Bewerbenden lassen sich unter Angabe der Referenznummer (z.B. 10005-955011998040991647-B) abfragen

### Example

* Api Key Authentication (APIKeyHeaders):

```python
import time
from deutschland import Bewerberboerse
from deutschland.Bewerberboerse.api import default_api
from pprint import pprint
# Defining the host is optional and defaults to https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service
# See configuration.py for a list of all supported configuration parameters.
configuration = Bewerberboerse.Configuration(
    host = "https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeaders
configuration.api_key['APIKeyHeaders'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeaders'] = 'Bearer'

# Enter a context with an instance of the API client
with Bewerberboerse.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = default_api.DefaultApi(api_client)
    referenznummer = "10005-955011998040991647-B" # str | Referenznummer

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.bewerberdetails(referenznummer)
        pprint(api_response)
    except Bewerberboerse.ApiException as e:
        print("Exception when calling DefaultApi->bewerberdetails: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referenznummer** | **str**| Referenznummer |

### Return type

**{str: (bool, date, datetime, dict, float, int, list, str, none_type)}**

### Authorization

[APIKeyHeaders](../README.md#APIKeyHeaders)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

