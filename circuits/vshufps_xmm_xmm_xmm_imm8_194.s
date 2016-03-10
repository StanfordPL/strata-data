  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm3, %ymm1            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vbroadcastss %xmm1, %ymm1            #  3     0xa   5      OPC=vbroadcastss_ymm_xmm   
  punpckldq %xmm12, %xmm13             #  4     0xf   5      OPC=punpckldq_xmm_xmm      
  vunpckhps %xmm3, %xmm1, %xmm14       #  5     0x14  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm13, %xmm14, %xmm1         #  6     0x18  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                 #  7     0x1d  1      OPC=retq                   
                                                                                        
.size target, .-target
