  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpbroadcastd %xmm3, %xmm5            #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm     
  vpunpckhdq %xmm5, %xmm3, %xmm3       #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vmovshdup %xmm11, %xmm13             #  4     0xe   5      OPC=vmovshdup_xmm_xmm        
  movsd %xmm13, %xmm3                  #  5     0x13  5      OPC=movsd_xmm_xmm            
  vfmadd132ps %xmm2, %xmm5, %xmm2      #  6     0x18  5      OPC=vfmadd132ps_xmm_xmm_xmm  
  vpunpcklqdq %ymm13, %ymm2, %ymm9     #  7     0x1d  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm3, %ymm9, %ymm1      #  8     0x22  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                 #  9     0x26  1      OPC=retq                     
                                                                                          
.size target, .-target
