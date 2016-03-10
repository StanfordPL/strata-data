  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpmovzxbq %xmm1, %ymm6              #  1     0     5      OPC=vpmovzxbq_ymm_xmm     
  vbroadcastss %xmm6, %xmm3           #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  cvtsd2ss %xmm3, %xmm1               #  3     0xa   4      OPC=cvtsd2ss_xmm_xmm      
  callq .move_byte_13_of_ymm1_to_r8b  #  4     0xe   5      OPC=callq_label           
  movzbq %r8b, %rbx                   #  5     0x13  4      OPC=movzbq_r64_r8         
  retq                                #  6     0x17  1      OPC=retq                  
                                                                                      
.size target, .-target
