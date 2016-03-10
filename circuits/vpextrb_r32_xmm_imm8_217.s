  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %xmm7             #  1     0     5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_byte_9_of_ymm1_to_r9b  #  2     0x5   5      OPC=callq_label        
  movmskpd %xmm7, %ebx               #  3     0xa   4      OPC=movmskpd_r32_xmm   
  xaddb %r9b, %bl                    #  4     0xe   4      OPC=xaddb_r8_r8        
  retq                               #  5     0x12  1      OPC=retq               
                                                                                  
.size target, .-target
