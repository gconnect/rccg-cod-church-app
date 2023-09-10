class DonationModel {
  final String donationType;
  final String bankName;
  final String accountName;
  final String accountNumber;

  DonationModel({required this.donationType,
    required this.bankName,
    required this.accountName,
    required this.accountNumber});
}

  List<DonationModel> donations = <DonationModel>[
    DonationModel(
        donationType: "Offering",
        bankName: "First Bank",
        accountName: " RCCG City of David",
        accountNumber: "00239403535"
    ),

    DonationModel(
        donationType: "Tithe",
        bankName: "First Bank",
        accountName: " RCCG City of David",
        accountNumber: "00239403535"
    ),
    DonationModel(
        donationType: "Thanksgiving",
        bankName: "First Bank",
        accountName: " RCCG City of David",
        accountNumber: "00239403535"
    ),
    DonationModel(
        donationType: "First Fruit",
        bankName: "First Bank",
        accountName: " RCCG City of David",
        accountNumber: "00239403535"
    ),
    DonationModel(
        donationType: "Others",
        bankName: "First Bank",
        accountName: " RCCG City of David",
        accountNumber: "00239403535"
    ),
  ];

