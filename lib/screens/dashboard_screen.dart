import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ), // AppBar
      // COLUMN: Menyusun semua konten dari atas ke bawah
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Beri jarak dari tepi layar
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Ratakan konten ke kiri
            children: [
              // --- Teks Sapaan ---
              Text(
                'Selamat Datang,',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ), // Text
              const Text(
                'Muhammad Akmal Fadhurohman',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ), // TextStyle
              ), // Text
              const SizedBox(height: 24), // Spasi antar elemen
              // --- Kartu Informasi Utama ---
              // CONTAINER: Berfungsi sebagai kartu dengan sudut tumpul dan bayangan
              Container(
                width: double.infinity, // Lebar kartu memenuhi layar
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ), // BoxShadow
                  ],
                ), // BoxDecoration
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ROW: Menyejajarkan ikon dan teks "Saldo"
                    Row(
                      children: [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.grey[500],
                        ), // Icon
                        const SizedBox(width: 8),
                        Text(
                          'Saldo Saat Ini',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ), // Text
                      ],
                    ), // Row
                    const SizedBox(height: 8),
                    const Text(
                      'Rp 10.999.999',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ), // TextStyle
                    ), // Text
                    const SizedBox(height: 24),

                    // Tombol Aksi di dalam kartu
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E88FF),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ), // RoundedRectangleBorder
                        ), // ElevatedButton.styleFrom
                        child: const Text('Lihat Detail Transaksi'),
                      ), // ElevatedButton
                    ), // SizedBox
                  ],
                ), // Column
              ), // Container

              const SizedBox(height: 28),

              // --- Menu Fitur Cepat ---
              const Text(
                'Fitur Cepat',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ), // TextStyle
              ), // Text
              const SizedBox(height: 16),

              // GRID: Menu dengan ikon
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _buildMenuIcon(
                    'top_up.png',
                    'Top Up',
                    const Color(0xFF4CAF50),
                  ),
                  _buildMenuIcon(
                    'transfer.png',
                    'Transfer',
                    const Color(0xFF2196F3),
                  ),
                  _buildMenuIcon(
                    'payment.png',
                    'Bayar',
                    const Color(0xFFFF9800),
                  ),
                  _buildMenuIcon(
                    'history.png',
                    'Riwayat',
                    const Color(0xFF9C27B0),
                  ),
                ],
              ), // GridView.count

              const SizedBox(height: 28),

              // --- Transaksi Terbaru ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Transaksi Terbaru',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  TextButton(
                    onPressed: () {},
                    child: const Text('Lihat Semua'),
                  ), // TextButton
                ],
              ), // Row
              const SizedBox(height: 12),

              // List Transaksi
              _buildTransactionItem(
                'shopping.png',
                'Belanja Online',
                'Tokopedia',
                '-Rp 250.000',
                Colors.red,
              ),
              _buildTransactionItem(
                'salary.png',
                'Gaji Bulanan',
                'PT. ABC Indonesia',
                '+Rp 8.500.000',
                Colors.green,
              ),
              _buildTransactionItem(
                'food.png',
                'Makan & Minum',
                'Resto Favorit',
                '-Rp 145.000',
                Colors.red,
              ),

              const SizedBox(height: 16),

              // --- Banner Promo ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ), // BoxShadow
                  ],
                ), // BoxDecoration
                child: Row(
                  children: [
                    Image.asset('assets/promo.png', width: 60, height: 60),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Promo Spesial!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ), // TextStyle
                          ), // Text
                          const SizedBox(height: 4),
                          Text(
                            'Cashback hingga 50% untuk transaksi pertama',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white.withOpacity(0.9),
                            ), // TextStyle
                          ), // Text
                        ],
                      ), // Column
                    ), // Expanded
                  ],
                ), // Row
              ), // Container

              const SizedBox(height: 24),
            ],
          ), // Column
        ), // Padding
      ), // SingleChildScrollView
    ); // Scaffold
  }

  // Widget untuk menu icon
  Widget _buildMenuIcon(String iconPath, String label, Color bgColor) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: bgColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Image.asset('assets/$iconPath', width: 32, height: 32),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  // Widget untuk item transaksi
  Widget _buildTransactionItem(
    String iconPath,
    String title,
    String subtitle,
    String amount,
    Color amountColor,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Image.asset('assets/$iconPath', width: 28, height: 28),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: amountColor,
            ),
          ),
        ],
      ),
    );
  }
}
