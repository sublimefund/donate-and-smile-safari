(function () {
    console.log(`Donate and Smile: checking ${window.location.href}`);
    const url = new URL(window.location.href);

    // AmazonSmile is only active in Germany, the U.S., and the U.K.
    const matches = url.hostname.match(/^(?:www\.)?amazon\.(de|com|co\.uk)$/);
    if (!matches) {
        console.log('Donate and Smile: not redirecting because Smile is not supported for this region');
        return;
    }

    // e.g. 'com', 'co.uk'
    const extension = matches[1];

    /* Prevent an infinite redirect loop if the particular page doesn't support
       Smile or if the user isn't logged in. We are counting on Amazon to
       preserve our query parameter through their redirect. */
    const params = url.searchParams;
    if (params.get('donateandsmile') === '1') {
        console.log('Donate and Smile: not redirecting because Smile is not supported on this page');
        return;
    }
    params.set('donateandsmile', '1');

    const smileUrl = `https://smile.amazon.${extension}${url.pathname}?${params.toString()}${url.hash}`;
    console.log(`Donate and Smile: redirecting to: ${smileUrl}`);
    window.location.replace(smileUrl);
})();
