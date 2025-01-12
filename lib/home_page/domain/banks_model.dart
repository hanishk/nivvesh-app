class BanksDetails {
  final String? type;
  final String? text;
  final List<Banks>? banks;

  BanksDetails({
    this.type,
    this.text,
    this.banks,
  });

  BanksDetails.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        text = json['text'] as String?,
        banks = (json['banks'] as List?)
            ?.map((dynamic e) => Banks.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'type': type,
        'text': text,
        'banks': banks?.map((e) => e.toJson()).toList()
      };
}

class Banks {
  final String? id;
  final String? name;
  final String? banner;
  final String? icon;
  final String? speciality;
  final List<Tags>? tags;
  final List<InvestmentPlans>? investmentPlans;

  Banks({
    this.id,
    this.name,
    this.banner,
    this.icon,
    this.speciality,
    this.tags,
    this.investmentPlans,
  });

  Banks.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        banner = json['banner'] as String?,
        icon = json['icon'] as String?,
        speciality = json['speciality'] as String?,
        tags = (json['tags'] as List?)
            ?.map((dynamic e) => Tags.fromJson(e as Map<String, dynamic>))
            .toList(),
        investmentPlans = (json['investmentPlans'] as List?)
            ?.map((dynamic e) =>
                InvestmentPlans.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'banner': banner,
        'icon': icon,
        'speciality': speciality,
        'tags': tags?.map((e) => e.toJson()).toList(),
        'investmentPlans': investmentPlans?.map((e) => e.toJson()).toList()
      };
}

class Tags {
  final String? key;
  final String? value;

  Tags({
    this.key,
    this.value,
  });

  Tags.fromJson(Map<String, dynamic> json)
      : key = json['key'] as String?,
        value = json['value'] as String?;

  Map<String, dynamic> toJson() => {'key': key, 'value': value};
}

class InvestmentPlans {
  final String? id;
  final int? minYears;
  final int? maxYears;
  final int? minAmount;
  final int? maxAmount;
  final int? returnRate;
  final String? title;
  final String? subTitle;

  InvestmentPlans({
    this.id,
    this.minYears,
    this.maxYears,
    this.minAmount,
    this.maxAmount,
    this.returnRate,
    this.title,
    this.subTitle,
  });

  InvestmentPlans.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        minYears = json['minYears'] as int?,
        maxYears = json['maxYears'] as int?,
        minAmount = json['minAmount'] as int?,
        maxAmount = json['maxAmount'] as int?,
        returnRate = json['returnRate'] as int?,
        title = json['title'] as String?,
        subTitle = json['subTitle'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'minYears': minYears,
        'maxYears': maxYears,
        'minAmount': minAmount,
        'maxAmount': maxAmount,
        'returnRate': returnRate,
        'title': title,
        'subTitle': subTitle
      };
}

// Temp Data
const bankDetails = [
  {
    "type": "MOSTPOPULAR",
    "text": "MOSTPOPULAR banks",
    "banks": [
      {
        "id": "477e06f9-2c5d-48d3-b9aa-dbe4c4da3eb0",
        "name": "State Bank of India",
        "banner": "https://www.gstatic.com/webp/gallery/2.jpg",
        "icon": "https://img.icons8.com/ios-filled/50/000000/checkmark.png",
        "speciality": "Public Sector Bank",
        "tags": [
          {"key": "MOSTPOPULAR", "value": "MOSTPOPULAR"},
          {"key": "TRADITIONAL", "value": "TRADITIONAL"}
        ],
        "investmentPlans": [
          {
            "id": "a29ae030-8612-4b37-93e8-b07ffb39e3e5",
            "minYears": 1,
            "maxYears": 5,
            "minAmount": 1000.0,
            "maxAmount": 50000.0,
            "returnRate": 5.0,
            "title": "Basic Plan",
            "subTitle": "Low risk investment"
          },
          {
            "id": "c2957186-f183-4c23-9f37-151cf8730ba8",
            "minYears": 6,
            "maxYears": 10,
            "minAmount": 5000.0,
            "maxAmount": 100000.0,
            "returnRate": 7.0,
            "title": "Premium Plan",
            "subTitle": "Moderate risk investment"
          }
        ]
      },
      {
        "id": "b42f4e1c-1f58-470d-a030-280a5376a9a5",
        "name": "HDFC Bank",
        "banner": "https://www.gstatic.com/webp/gallery/2.jpg",
        "icon": "https://img.icons8.com/ios-filled/50/000000/checkmark.png",
        "speciality": "Private Sector Bank",
        "tags": [
          {"key": "MOSTPOPULAR", "value": "MOSTPOPULAR"},
          {"key": "INNOVATIVE", "value": "INNOVATIVE"}
        ],
        "investmentPlans": [
          {
            "id": "c772b18a-c2fd-463e-ae35-1b800de684bf",
            "minYears": 2,
            "maxYears": 8,
            "minAmount": 2000.0,
            "maxAmount": 40000.0,
            "returnRate": 6.5,
            "title": "Basic Plan",
            "subTitle": "Low risk investment"
          },
          {
            "id": "ef4f1798-06e9-4595-aa8d-b5def5fe9d00",
            "minYears": 10,
            "maxYears": 15,
            "minAmount": 10000.0,
            "maxAmount": 200000.0,
            "returnRate": 8.0,
            "title": "Premium Plan",
            "subTitle": "High risk investment"
          }
        ]
      },
      {
        "id": "358703bd-22e1-4ce6-887e-0350a7734192",
        "name": "ICICI Bank",
        "banner": "https://www.gstatic.com/webp/gallery/2.jpg",
        "icon": "https://img.icons8.com/ios-filled/50/000000/checkmark.png",
        "speciality": "Private Sector Bank",
        "tags": [
          {"key": "MOSTPOPULAR", "value": "MOSTPOPULAR"},
          {"key": "NEWLYADDED", "value": "NEWLYADDED"}
        ],
        "investmentPlans": [
          {
            "id": "82fd07e8-80dc-4075-ae17-72221e2a48de",
            "minYears": 1,
            "maxYears": 3,
            "minAmount": 500.0,
            "maxAmount": 20000.0,
            "returnRate": 4.5,
            "title": "Basic Plan",
            "subTitle": "Low risk investment"
          }
        ]
      }
    ]
  },
  {
    "type": "NEWLYADDED",
    "text": "NEWLYADDED banks",
    "banks": [
      {
        "id": "57d3ca82-388a-4eb8-bfa2-9de420e2b61c",
        "name": "IDFC Bank",
        "banner": "https://www.gstatic.com/webp/gallery/2.jpg",
        "icon": "https://img.icons8.com/ios-filled/50/000000/checkmark.png",
        "speciality": "Private Sector Bank",
        "tags": [
          {"key": "NEWLYADDED", "value": "NEWLYADDED"},
          {"key": "INNOVATIVE", "value": "INNOVATIVE"}
        ],
        "investmentPlans": [
          {
            "id": "6736ac56-ab21-4418-a382-402eaa25a1f5",
            "minYears": 5,
            "maxYears": 10,
            "minAmount": 10000.0,
            "maxAmount": 500000.0,
            "returnRate": 9.0,
            "title": "Long-term Plan",
            "subTitle": "Moderate risk investment"
          }
        ]
      },
      {
        "id": "9b11f317-1e62-4b65-ac6e-45f4390e6826",
        "name": "YES Bank",
        "banner": "https://www.gstatic.com/webp/gallery/2.jpg",
        "icon": "https://img.icons8.com/ios-filled/50/000000/checkmark.png",
        "speciality": "Private Sector Bank",
        "tags": [
          {"key": "NEWLYADDED", "value": "NEWLYADDED"},
          {"key": "INNOVATIVE", "value": "INNOVATIVE"}
        ],
        "investmentPlans": [
          {
            "id": "24be4d83-f8d3-4baa-83ab-18de79133a8c",
            "minYears": 3,
            "maxYears": 7,
            "minAmount": 3000.0,
            "maxAmount": 50000.0,
            "returnRate": 6.0,
            "title": "Basic Plan",
            "subTitle": "Low risk investment"
          }
        ]
      },
      {
        "id": "358703bd-22e1-4ce6-887e-0350a7734192",
        "name": "ICICI Bank",
        "banner": "https://www.gstatic.com/webp/gallery/2.jpg",
        "icon": "https://img.icons8.com/ios-filled/50/000000/checkmark.png",
        "speciality": "Private Sector Bank",
        "tags": [
          {"key": "MOSTPOPULAR", "value": "MOSTPOPULAR"},
          {"key": "NEWLYADDED", "value": "NEWLYADDED"}
        ],
        "investmentPlans": [
          {
            "id": "82fd07e8-80dc-4075-ae17-72221e2a48de",
            "minYears": 1,
            "maxYears": 3,
            "minAmount": 500.0,
            "maxAmount": 20000.0,
            "returnRate": 4.5,
            "title": "Basic Plan",
            "subTitle": "Low risk investment"
          }
        ]
      },
      {
        "id": "39ae2dd6-7944-428b-8347-ac1669438086",
        "name": "IndusInd Bank",
        "banner": "https://www.gstatic.com/webp/gallery/2.jpg",
        "icon": "https://img.icons8.com/ios-filled/50/000000/checkmark.png",
        "speciality": "Private Sector Bank",
        "tags": [
          {"key": "NEWLYADDED", "value": "NEWLYADDED"},
          {"key": "INNOVATIVE", "value": "INNOVATIVE"}
        ],
        "investmentPlans": [
          {
            "id": "f5420c76-0610-4b8e-9f6e-03d9eef90154",
            "minYears": 4,
            "maxYears": 10,
            "minAmount": 5000.0,
            "maxAmount": 100000.0,
            "returnRate": 7.5,
            "title": "Premium Plan",
            "subTitle": "High risk investment"
          }
        ]
      }
    ]
  }
];
