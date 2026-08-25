# Support: tickets, departments, news, knowledgebase

function Get-HCSupportListTickets {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/tickets" -Params $Params
}

function Get-HCSupportCreateTicket {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/tickets" -Params $Params
}

function Get-HCSupportGetTicket {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/tickets/{number}" -Params $Params
}

function Get-HCSupportReply {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "POST" -Path "/api/tickets/{number}" -Params $Params
}

function Get-HCSupportGetAttachment {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/ticket/attachment/{file}" -Params $Params
}

function Get-HCSupportReopen {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/tickets/{number}/open" -Params $Params
}

function Get-HCSupportClose {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "PUT" -Path "/api/tickets/{number}/close" -Params $Params
}

function Get-HCSupportListDepartments {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/ticket/departments" -Params $Params
}

function Get-HCSupportListNews {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/news" -Params $Params
}

function Get-HCSupportGetNews {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/news/{news_id}" -Params $Params
}

function Get-HCSupportListKnowledgebaseCategories {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/knowledgebase" -Params $Params
}

function Get-HCSupportGetKnowledgebaseCategory {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/knowledgebase/{category_id}" -Params $Params
}

function Get-HCSupportGetKnowledgebaseArticle {
    [CmdletBinding()]
    param([hashtable]$Params = @{})
    Invoke-HCRequest -Method "GET" -Path "/api/knowledgebase/article/{article_id}" -Params $Params
}

Export-ModuleMember -Function *
