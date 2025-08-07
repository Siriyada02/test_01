*** Settings ***
Library           find_common

*** Test Cases ***
Find Common Items And Sort
    # สร้างลิสต์ A และ B
    ${list_a}=    Create List    1    2    3    5    6    8    9
    ${list_b}=    Create List    3    2    1    5    6    0

    # หาเลขที่ซ้ำกันและเรียงจากน้อยไปมาก
    ${common}=    Evaluate    sorted(set(${list_a}) & set(${list_b}))

    # แสดงผลลัพธ์ทั้งใน log และหน้าจอ
    Log    ✅ Common items (sorted): ${common}
    Log To Console    ✅ Common items (sorted): ${common}