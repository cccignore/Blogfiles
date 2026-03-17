---
title: 随机逛逛
date: 2026-03-04 20:00:00
layout: page
comments: false
---

<div id="random-jump-tip">正在为你随机选择一篇文章...</div>

<script>
  (() => {
    const tip = document.getElementById('random-jump-tip')
    const denyPrefix = ['/archives/', '/categories/', '/tags/', '/link/', '/random/']

    const isValidPostPath = url => {
      if (!url || typeof url !== 'string') return false
      if (!url.startsWith('/')) return false
      return !denyPrefix.some(prefix => url.startsWith(prefix))
    }

    const fallback = () => {
      tip.innerHTML = '随机失败，<a href="/archives/">点这里去归档挑一篇</a>。'
    }

    fetch('/search.xml')
      .then(res => {
        if (!res.ok) throw new Error('search index not found')
        return res.text()
      })
      .then(xmlText => {
        const doc = new DOMParser().parseFromString(xmlText, 'text/xml')
        const urls = Array.from(doc.querySelectorAll('entry > url'))
          .map(item => (item.textContent || '').trim())
          .map(url => {
            try {
              return new URL(url, window.location.origin).pathname
            } catch (_) {
              return ''
            }
          })
          .filter(isValidPostPath)

        if (!urls.length) throw new Error('no posts')

        const uniqueUrls = Array.from(new Set(urls))
        const target = uniqueUrls[Math.floor(Math.random() * uniqueUrls.length)]

        tip.textContent = '找到啦，正在跳转...'
        window.location.replace(target)
      })
      .catch(fallback)
  })()
</script>
