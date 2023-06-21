FROM amazoncorretto:11-alpine
RUN wget https://github.com/GlobalDataverseCommunityConsortium/dataverse-uploader/releases/download/v1.1.0/DVUploader-v1.1.0.jar
USER nobody
ENTRYPOINT ["java", "-jar", "/DVUploader-v1.1.0.jar", "-directupload", "-server=https://dataverse.harvard.edu"]
