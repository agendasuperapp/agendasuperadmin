<?php
$cupom = rtrim($_GET['cupom'] ?? '', '/');

if (!$cupom) {
  http_response_code(400);
  echo 'Cupom não fornecido.';
  exit;
}

// Supabase API URL e Key
$api_url = 'https://hzmixuvrnzpypriagecv.supabase.co/rest/v1/rpc/fc_share_cupom';
$headers = [
  'Content-Type: application/json',
  'apikey: ' . 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6bWl4dXZybnpweXByaWFnZWN2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NjkzMTQsImV4cCI6MjA0MDU0NTMxNH0.VHtjYivpM8c9RLmKimwRiLgnb8zqGrZ88Q8vpVLZcZ0'
];

$options = [
  'http' => [
    'method'  => 'POST',
    'header'  => implode("\r\n", $headers),
    'content' => json_encode(['param_cupom' => $cupom])
  ]
];

$context  = stream_context_create($options);
$response = file_get_contents($api_url, false, $context);
$data = json_decode($response, true);

if (!$data || $data[0]['result'] !== 'True') {
  http_response_code(404);
  echo 'Cupom não encontrado.';
  exit;
}

$cupomData = $data[0];

$nomeAfiliado = htmlspecialchars($cupomData['nome_afiliado']);
$descricao    = htmlspecialchars($cupomData['descricao'] ?? '');
$imagem       = $cupomData['foto'];
$url_final    = "https://rendarecorrente.app/{$cupom}";
$titulo       = "Cupom: " . htmlspecialchars($cupomData['cupom']);
?>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8">
    <title><?= $titulo ?></title>
    <meta property="og:title" content="<?= $titulo ?>" />
    <meta property="og:description" content="<?= $descricao ?>" />
    <meta property="og:image" content="<?= $imagem ?>" />
    <meta property="og:url" content="<?= $url_final ?>" />
    <meta property="og:type" content="website" />
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="<?= $titulo ?>">
    <meta name="twitter:description" content="<?= $descricao ?>">
    <meta name="twitter:image" content="<?= $imagem ?>">
  </head>
  <body>
    Redirecionando para o cupom <?= $titulo ?>...
  </body>
</html>
