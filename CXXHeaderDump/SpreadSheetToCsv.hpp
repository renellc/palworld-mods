#ifndef UE4SS_SDK_SpreadSheetToCsv_HPP
#define UE4SS_SDK_SpreadSheetToCsv_HPP

#include "SpreadSheetToCsv_enums.hpp"

class USpreadSheetImpoter : public UObject
{
    FSpreadSheetImpoterOnGetResult OnGetResult;                                       // 0x0038 (size: 0x10)
    void OnGetResult(const bool bSuccess, class USpreadSheetImpoter* Importer, const EFetchResult Status);
    FSpreadSheetImpoterErrorLogger ErrorLogger;                                       // 0x0048 (size: 0x10)
    void OutputErrorDelegate(FString ErrorMsg);
    class UDataTable* TargetDataTable;                                                // 0x0058 (size: 0x8)
    TArray<int32> IgnoreRowIndexes;                                                   // 0x0060 (size: 0x10)
    FName AutoUniqueIdColumnName;                                                     // 0x0070 (size: 0x8)
    FName RowNameHashColumnName;                                                      // 0x0078 (size: 0x8)
    TArray<FName> MetaTagText_IgnoreRow;                                              // 0x0080 (size: 0x10)
    TMap<class FName, class FName> BlueprintName2ObjectPathColumnNameMap;             // 0x0090 (size: 0x50)
    FName BlueprintNamePrefix;                                                        // 0x00E0 (size: 0x8)
    bool bNoticeMessageAtNewRecordImported;                                           // 0x00E8 (size: 0x1)

    FString ToCsvStringForLocalizedText(FString pickCultureName);
    FString ToCsvString();
    void PostProcessImport(bool& bAppliedPostProcess);
    bool IsExistNewRecord();
    class USpreadSheetImpoter* GetRequest(const FName sheetId, const FName sheetName, const FName Key);
    bool FromString(FString Data);
    FString CreateSheetUrlString(const FName sheetId, const FName sheetNameId);
    class USpreadSheetImpoter* Create();
}; // Size: 0xF0

class USpreadSheetUtility : public UObject
{
}; // Size: 0x28

#endif
