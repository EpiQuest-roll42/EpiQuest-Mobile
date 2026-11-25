FROM gmeligio/flutter-android:3.50.0 AS build

USER root
WORKDIR /app
COPY . .
RUN flutter pub get && flutter build apk

# Stage that contains only the build output
FROM scratch AS export
COPY --from=build /app/build /build