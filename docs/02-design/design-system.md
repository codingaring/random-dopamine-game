# Design System — Random Dopamine Game

## Overview

Neon & Dark 테마 기반의 게임 디자인 시스템. 2~12명 유동적 플레이어 지원.

## Color Palette

| Token | Hex | Usage |
|-------|-----|-------|
| background | #0D0D0D | App background |
| surface | #1A1A2E | Cards, panels |
| primary | #00FF88 | Main actions, neon green |
| secondary | #FF00FF | Highlights, neon pink |
| accent | #00BFFF | Info, neon blue |
| warning | #FFFF00 | Warnings, neon yellow |
| error | #FF3333 | Errors, neon red |

### Lane Colors (12)

| # | Hex | Name |
|---|-----|------|
| 1 | #00FF88 | Neon Green |
| 2 | #FF00FF | Neon Pink |
| 3 | #00BFFF | Neon Blue |
| 4 | #FFFF00 | Neon Yellow |
| 5 | #FF6B6B | Coral Red |
| 6 | #A78BFA | Purple |
| 7 | #FF8C00 | Orange |
| 8 | #00FFD1 | Cyan |
| 9 | #FF1493 | Hot Pink |
| 10 | #7FFF00 | Chartreuse |
| 11 | #FF4500 | Red Orange |
| 12 | #1E90FF | Dodger Blue |

## Typography

Font: **Press Start 2P** (Google Fonts)

| Style | Size | Usage |
|-------|------|-------|
| Display | 24px | Game title |
| Headline | 16px | Race results, winner |
| Body | 12px | Instructions, general |
| Label | 10px | Lane labels, +1 text |

All text supports neon glow shadow effect.

## Spacing

Base unit: 8px. Scale: xs(4), sm(8), md(16), lg(24), xl(32), xxl(48).

Game-specific: lane height 64px, lane gap 4px, character size 40px.

## Widgets

| Widget | Description |
|--------|-------------|
| GameButton | Neon glow border button with tap haptic feedback |
| StickmanCharacter | Running stickman icon with lane color |
| LaneTrack | Single horizontal race lane |
| MovementIndicator | Floating "+1" text animation on tap |
| ItemEffect | Boost/item visual effect (glow pulse) |

## Widgetbook

All widgets cataloged via Widgetbook for isolated browsing and testing.
