
project_list = [
  ["i-Educar", "Caroline", "i-Educar é um software público para a gestão escolar"],
  ["SGD","Walker","Sistema de Gestão de Demanda"],
  ["Mezuro","Manzo","Plataforma de medição e qualidade de software"],
  ["Noosfero","Antonio", "Ferramenta para rede social livre"]
]

story_list = [
  ["Role","Action", "Reason", "Status","Estimate","Acceptance", "Observations", "Task","Release", "Project"],
  ["usuário","visualizar em quais programas um determinado órgão investiu","ver a relação destes programas com os órgãos públicos","To do","3 Pontos","Nome dos programas, órgão e investimento", "Utilizar dados públicos do orgão XPTO", "Realizar busca em banco, contruir campos na view"],
  ["usuário","visualizar quais empreses foram contratadas por determinado órgão público", "ver a relação destas empresas com os órgãos públicos", "To do", "3 Pontos", "Nome da empresa, CNPJ, status de contratação", "Dado público do orgão XPTO","Realizar busca em banco, construir view"]
]
project_list.each do |name,owner,description|
  Project.create(name: name, owner: owner, description: description)
end

story_list.each do |role,action,reason,status,estimate,acceptance,observations|
  description = "Eu, como " + role + ", desejo " + action + " para " + reason
  Story.create(role: role, action: action, reason: reason, description: description, status: status, estimate: estimate, acceptance: acceptance, observations: observations)
end
