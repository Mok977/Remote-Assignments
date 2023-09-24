
/*
 2. There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.

調用 reloadData() 方法時， UITableView 會重新加載所有的數據，並調用相關的 UITableViewDataSource 方法來獲取新的數據以及設定視圖的外觀和內容，調用順序如下：

 1. numberOfSections(in:)： 首先，這個方法用於確定表格視圖中的區塊（sections）數量。這是一個最早調用的方法，用於確保表格有多少個區塊。

 2. titleForHeaderInSection(_:) 和 titleForFooterInSection(_:)： 這兩個方法可選地用於設置特定區塊的標題和尾標題。如果你設置了這些標題，則它們會在表格視圖中顯示相應的區塊頂部和底部。

  3. numberOfRowsInSection(_:)： 接下來，這個方法用於確定每個區塊中的行數。根據新的數據源，表格視圖會計算每個區塊的行數。

 4. cellForRowAt(_:)： 這個方法用於為每個行配置和返回單元格。當你調用reloadData()時，表格視圖會根據新的數據源調用這個方法，以確保每個行都有適當的內容。

*/

