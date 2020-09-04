from rest_framework.response import Response
from rest_framework.decorators import api_view
from shoppies.models import Awards
from shoppies.api.serializers import AwardsSerializer
from django.http import HttpResponse
from rest_framework import status

@api_view(['GET', 'POST'])
def awards_api(request):
    value = request.headers['userID']
    print('userid', value)
    try:
        awards = Awards.objects.filter(userID=value)
    except Awards.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = AwardsSerializer(awards, many=True)
        return Response(serializer.data)
    elif request.method == 'POST':
        serializer = AwardsSerializer(data=request.data)
        if serializer.is_valid():
            print(serializer, 'is valid')
            serializer.save()
        else:
            print('it isnt valid!', request.headers)
        return Response(serializer.data)

@api_view(['GET', "DELETE"])
def award_api(request, pk):
    try:
        award = Awards.objects.get(id=pk)
    except Awards.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = AwardsSerializer(award, many=False)
        return Response(serializer.data)

    elif request.method == 'DELETE':
        award.delete()    
        return Response({ "message": "Movie Deselected"})




@api_view(['GET'])
def awards_all_api(request):
    value = request.headers['role']
    try:
        awards = Awards.objects.all()
        print('it is in the IFFY', value == "admin")
    except Awards.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        if value == 'admin':
            serializer = AwardsSerializer(awards, many=True)
            return Response(serializer.data)
        else:
            return Response({"message": "You Cannot Access Nominations"})