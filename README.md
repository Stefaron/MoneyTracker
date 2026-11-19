# MoneyTracker

Aplikasi pencatatan keuangan personal untuk iOS, dibangun dengan SwiftUI,
Swift 6, dan SwiftData.

## Masalah

Mencatat pengeluaran harian sering terasa merepotkan, sehingga orang berhenti
melakukannya dan kehilangan gambaran ke mana uang pergi. MoneyTracker
memprioritaskan pencatatan cepat, kategori yang rapi, dan ringkasan bulanan
yang mudah dibaca.

## Screenshot

> Ditambahkan pada M6.

## Arsitektur

Modular MVVM + Repository dengan local Swift package `MoneyTrackerKit`:

- `Domain` — entity, value type, use case, protokol repository (Foundation only)
- `Data` — SwiftData records, repository implementation, migration plan
- `DesignSystem` — token dan komponen UI
- `AppSupport` — logging, clock, ID generation
- `Features` — Transactions, Budgets, Reports, Settings

Dependency mengarah satu arah: `Features` → `Domain` ← `Data`.

Diagram: [`docs/architecture.drawio`](docs/architecture.drawio)

## Cara menjalankan

Prasyarat: Xcode 16.2+, Swift 6.

```bash
open MoneyTracker.xcodeproj
```

Pilih scheme `MoneyTracker`, destination simulator iPhone, lalu `⌘R`.

Test package (dijalankan di simulator iOS, sesuai platform target):

```bash
cd MoneyTrackerKit
xcodebuild test \
  -scheme MoneyTrackerKit-Package \
  -destination 'platform=iOS Simulator,name=iPhone 16' \
  CODE_SIGNING_ALLOWED=NO
```

Atau buka folder `MoneyTrackerKit` di Xcode dan tekan `⌘U`.

## Testing

| Level | Lokasi |
|---|---|
| Unit domain | `MoneyTrackerKit/Tests/DomainTests` |
| Unit data | `MoneyTrackerKit/Tests/DataTests` |
| UI smoke | `MoneyTrackerUITests` |

## Keputusan teknis

Lihat `docs/adr/` (ditambahkan pada M1–M2).
