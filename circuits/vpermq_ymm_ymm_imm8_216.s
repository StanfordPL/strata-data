  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  callq .move_64_128_xmm12_xmm13_xmm3   #  2     0x5   5      OPC=callq_label            
  vmaxss %xmm2, %xmm2, %xmm6            #  3     0xa   4      OPC=vmaxss_xmm_xmm_xmm     
  vunpckhpd %xmm13, %xmm6, %xmm13       #  4     0xe   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movups %xmm3, %xmm12                  #  5     0x13  4      OPC=movups_xmm_xmm         
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
