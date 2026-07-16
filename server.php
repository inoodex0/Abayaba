<?php

$publicPath = __DIR__;

$uri = urldecode(
    parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) ?? ''
);

$filePath = $publicPath.$uri;

$mimeTypes = [
    'css' => 'text/css',
    'js' => 'application/javascript',
    'json' => 'application/json',
    'png' => 'image/png',
    'jpg' => 'image/jpeg',
    'jpeg' => 'image/jpeg',
    'gif' => 'image/gif',
    'svg' => 'image/svg+xml',
    'webp' => 'image/webp',
    'avif' => 'image/avif',
    'ico' => 'image/x-icon',
    'woff' => 'font/woff',
    'woff2' => 'font/woff2',
    'ttf' => 'font/ttf',
    'eot' => 'application/vnd.ms-fontobject',
    'otf' => 'font/otf',
    'pdf' => 'application/pdf',
    'xml' => 'application/xml',
    'zip' => 'application/zip',
    'mp4' => 'video/mp4',
    'webm' => 'video/webm',
    'txt' => 'text/plain',
    'html' => 'text/html',
];

if ($uri !== '/' && file_exists($filePath) && !is_dir($filePath)) {
    if (str_starts_with($uri, '/public')) {
        $ext = pathinfo($filePath, PATHINFO_EXTENSION);
        header('Content-Type: '.($mimeTypes[$ext] ?? 'application/octet-stream'));
        readfile($filePath);

        return true;
    }

    return false;
}

require_once $publicPath.'/index.php';
