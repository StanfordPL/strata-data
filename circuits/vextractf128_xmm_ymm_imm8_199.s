  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_byte_11_of_ymm1_to_r9b    #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  callq .move_64_128_xmm12_xmm13_xmm1   #  3     0xa   5      OPC=callq_label            
  callq .move_r9b_to_byte_25_of_ymm1    #  4     0xf   5      OPC=callq_label            
  vunpckhpd %xmm13, %xmm1, %xmm1        #  5     0x14  5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
