
class DetailModel {
  Request? request;
  int? count;
  List<Item>? item;

  DetailModel({this.request, this.count, this.item});

  DetailModel.fromJson(Map<String, dynamic> json) {
    if(json["request"] is Map) {
      request = json["request"] == null ? null : Request.fromJson(json["request"]);
    }
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["item"] is List) {
      item = json["item"] == null ? null : (json["item"] as List).map((e) => Item.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(request != null) {
      _data["request"] = request?.toJson();
    }
    _data["count"] = count;
    if(item != null) {
      _data["item"] = item?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Item {
  String? eventId;
  String? eventname;
  String? eventnameRaw;
  String? ownerId;
  String? thumbUrl;
  String? thumbUrlLarge;
  int? startTime;
  String? startTimeDisplay;
  int? endTime;
  String? endTimeDisplay;
  String? location;
  Venue? venue;
  String? label;
  int? featured;
  String? eventUrl;
  String? shareUrl;
  String? bannerUrl;
  double? score;
  List<String>? categories;
  List<String>? tags;
  Tickets? tickets;
  List<dynamic>? customParams;

  Item({this.eventId, this.eventname, this.eventnameRaw, this.ownerId, this.thumbUrl, this.thumbUrlLarge, this.startTime, this.startTimeDisplay, this.endTime, this.endTimeDisplay, this.location, this.venue, this.label, this.featured, this.eventUrl, this.shareUrl, this.bannerUrl, this.score, this.categories, this.tags, this.tickets, this.customParams});

  Item.fromJson(Map<String, dynamic> json) {
    if(json["event_id"] is String) {
      eventId = json["event_id"];
    }
    if(json["eventname"] is String) {
      eventname = json["eventname"];
    }
    if(json["eventname_raw"] is String) {
      eventnameRaw = json["eventname_raw"];
    }
    if(json["owner_id"] is String) {
      ownerId = json["owner_id"];
    }
    if(json["thumb_url"] is String) {
      thumbUrl = json["thumb_url"];
    }
    if(json["thumb_url_large"] is String) {
      thumbUrlLarge = json["thumb_url_large"];
    }
    if(json["start_time"] is int) {
      startTime = json["start_time"];
    }
    if(json["start_time_display"] is String) {
      startTimeDisplay = json["start_time_display"];
    }
    if(json["end_time"] is int) {
      endTime = json["end_time"];
    }
    if(json["end_time_display"] is String) {
      endTimeDisplay = json["end_time_display"];
    }
    if(json["location"] is String) {
      location = json["location"];
    }
    if(json["venue"] is Map) {
      venue = json["venue"] == null ? null : Venue.fromJson(json["venue"]);
    }
    if(json["label"] is String) {
      label = json["label"];
    }
    if(json["featured"] is int) {
      featured = json["featured"];
    }
    if(json["event_url"] is String) {
      eventUrl = json["event_url"];
    }
    if(json["share_url"] is String) {
      shareUrl = json["share_url"];
    }
    if(json["banner_url"] is String) {
      bannerUrl = json["banner_url"];
    }
    if(json["score"] is double) {
      score = json["score"];
    }
    if(json["categories"] is List) {
      categories = json["categories"] == null ? null : List<String>.from(json["categories"]);
    }
    if(json["tags"] is List) {
      tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    }
    if(json["tickets"] is Map) {
      tickets = json["tickets"] == null ? null : Tickets.fromJson(json["tickets"]);
    }
    if(json["custom_params"] is List) {
      customParams = json["custom_params"] ?? [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["event_id"] = eventId;
    _data["eventname"] = eventname;
    _data["eventname_raw"] = eventnameRaw;
    _data["owner_id"] = ownerId;
    _data["thumb_url"] = thumbUrl;
    _data["thumb_url_large"] = thumbUrlLarge;
    _data["start_time"] = startTime;
    _data["start_time_display"] = startTimeDisplay;
    _data["end_time"] = endTime;
    _data["end_time_display"] = endTimeDisplay;
    _data["location"] = location;
    if(venue != null) {
      _data["venue"] = venue?.toJson();
    }
    _data["label"] = label;
    _data["featured"] = featured;
    _data["event_url"] = eventUrl;
    _data["share_url"] = shareUrl;
    _data["banner_url"] = bannerUrl;
    _data["score"] = score;
    if(categories != null) {
      _data["categories"] = categories;
    }
    if(tags != null) {
      _data["tags"] = tags;
    }
    if(tickets != null) {
      _data["tickets"] = tickets?.toJson();
    }
    if(customParams != null) {
      _data["custom_params"] = customParams;
    }
    return _data;
  }
}

class Tickets {
  bool? hasTickets;
  String? ticketUrl;
  String? ticketCurrency;
  int? minTicketPrice;
  int? maxTicketPrice;

  Tickets({this.hasTickets, this.ticketUrl, this.ticketCurrency, this.minTicketPrice, this.maxTicketPrice});

  Tickets.fromJson(Map<String, dynamic> json) {
    if(json["has_tickets"] is bool) {
      hasTickets = json["has_tickets"];
    }
    if(json["ticket_url"] is String) {
      ticketUrl = json["ticket_url"];
    }
    if(json["ticket_currency"] is String) {
      ticketCurrency = json["ticket_currency"];
    }
    if(json["min_ticket_price"] is int) {
      minTicketPrice = json["min_ticket_price"];
    }
    if(json["max_ticket_price"] is int) {
      maxTicketPrice = json["max_ticket_price"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_tickets"] = hasTickets;
    _data["ticket_url"] = ticketUrl;
    _data["ticket_currency"] = ticketCurrency;
    _data["min_ticket_price"] = minTicketPrice;
    _data["max_ticket_price"] = maxTicketPrice;
    return _data;
  }
}

class Venue {
  String? street;
  String? city;
  String? state;
  String? country;
  double? latitude;
  double? longitude;
  String? fullAddress;

  Venue({this.street, this.city, this.state, this.country, this.latitude, this.longitude, this.fullAddress});

  Venue.fromJson(Map<String, dynamic> json) {
    if(json["street"] is String) {
      street = json["street"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["latitude"] is double) {
      latitude = json["latitude"];
    }
    if(json["longitude"] is double) {
      longitude = json["longitude"];
    }
    if(json["full_address"] is String) {
      fullAddress = json["full_address"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["street"] = street;
    _data["city"] = city;
    _data["state"] = state;
    _data["country"] = country;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["full_address"] = fullAddress;
    return _data;
  }
}

class Request {
  String? venue;
  String? ids;
  String? type;
  String? city;
  int? edate;
  int? page;
  String? keywords;
  int? sdate;
  String? category;
  String? cityDisplay;
  int? rows;

  Request({this.venue, this.ids, this.type, this.city, this.edate, this.page, this.keywords, this.sdate, this.category, this.cityDisplay, this.rows});

  Request.fromJson(Map<String, dynamic> json) {
    if(json["venue"] is String) {
      venue = json["venue"];
    }
    if(json["ids"] is String) {
      ids = json["ids"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["edate"] is int) {
      edate = json["edate"];
    }
    if(json["page"] is int) {
      page = json["page"];
    }
    if(json["keywords"] is String) {
      keywords = json["keywords"];
    }
    if(json["sdate"] is int) {
      sdate = json["sdate"];
    }
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["city_display"] is String) {
      cityDisplay = json["city_display"];
    }
    if(json["rows"] is int) {
      rows = json["rows"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["venue"] = venue;
    _data["ids"] = ids;
    _data["type"] = type;
    _data["city"] = city;
    _data["edate"] = edate;
    _data["page"] = page;
    _data["keywords"] = keywords;
    _data["sdate"] = sdate;
    _data["category"] = category;
    _data["city_display"] = cityDisplay;
    _data["rows"] = rows;
    return _data;
  }
}