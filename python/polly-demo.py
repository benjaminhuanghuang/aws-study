import boto3
#Explicit Client Configuration
'''
polly = boto3.client('polly',
                     region_name='us-west-2',
                     aws_access_key_id='AKIA*************',
                     aws_secret_access_key='ABCDEF************************'
                     )
'''
# Implicit Client Configuration from ~./aws/config and ~/.aws/credentials
# Developer can create aws config manually or using aws cli
polly = boto3.client('polly')
                     
result = polly.synthesize_speech(Text='Hello world!',
                                 OutputFormat='mp3',
                                 VoiceId='Aditi')
# Save the Audio from the response
audio = result['AudioStream'].read()
with open("helloworld.mp3", "wb") as file:
  file.write(audio)
