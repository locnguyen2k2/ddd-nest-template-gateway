FROM krakend:2.9

# Set working directory for better clarity
WORKDIR /etc/krakend/

# Copy all configuration files into the container
COPY . /etc/krakend/

EXPOSE 8080

CMD ["run", "-dc", "/etc/krakend/krakend.tmpl"]