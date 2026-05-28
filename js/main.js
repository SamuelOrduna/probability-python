document.addEventListener('DOMContentLoaded', function() {
    renderMathInElement(document.body, {
        delimiters: [
            {left: '$$', right: '$$', display: true},
            {left: '$', right: '$', display: false}
        ]
    });

    document.querySelectorAll('pre code').forEach((block) => {
        hljs.highlightBlock(block);
    });

    const currentPage = window.location.pathname.split('/').pop() || 'index.html';
    document.querySelectorAll('.semanas-list a').forEach(link => {
        if (link.href.includes(currentPage)) {
            link.classList.add('active');
        }
    });
});
