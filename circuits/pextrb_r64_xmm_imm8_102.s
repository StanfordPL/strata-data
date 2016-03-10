  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  clc                                #  1     0     1      OPC=clc                  
  vsqrtss %xmm1, %xmm1, %xmm1        #  2     0x1   4      OPC=vsqrtss_xmm_xmm_xmm  
  callq .read_cf_into_rbx            #  3     0x5   5      OPC=callq_label          
  callq .move_byte_6_of_ymm1_to_r9b  #  4     0xa   5      OPC=callq_label          
  xaddb %bl, %r9b                    #  5     0xf   4      OPC=xaddb_r8_r8          
  retq                               #  6     0x13  1      OPC=retq                 
                                                                                    
.size target, .-target
