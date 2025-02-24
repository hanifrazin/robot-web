*** Settings ***
Resource    ../pages/common.resource


*** Variables ***
&{create_data}=    name=Kue Bolu Tape
...                description=Kue ini terbuat dari Tape / Peuyeum
...                quantity=100   
${id}=    0
&{update_data}=    name=Kue Bolu Tape Kukus
...                description=Kue ini terbuat dari Tape / Peuyeum dan dikukus
...                quantity=50
&{item}=           quantity=200   

*** Tasks ***
Run E2E Test API Kelas Otomesyen using Robot Framework
    Get List All Items in this api
    ${id}    Insert new item    &{create_data}
    Get specific Items    ${id}
    Update all items    ${id}    &{update_data}
    Update single item    ${id}
    Get specific Items    ${id}
    Delete Data    ${id}    

