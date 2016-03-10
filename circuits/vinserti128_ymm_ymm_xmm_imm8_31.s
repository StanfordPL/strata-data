  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm12, %ymm1           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_128_064_xmm3_r8_r9       #  3     0xa   5      OPC=callq_label            
  vpbroadcastq %xmm13, %ymm11          #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_r9b_to_byte_12_of_ymm1   #  5     0x14  5      OPC=callq_label            
  vunpckhpd %ymm11, %ymm1, %ymm1       #  6     0x19  5      OPC=vunpckhpd_ymm_ymm_ymm  
  movups %xmm2, %xmm1                  #  7     0x1e  3      OPC=movups_xmm_xmm         
  retq                                 #  8     0x21  1      OPC=retq                   
                                                                                        
.size target, .-target
