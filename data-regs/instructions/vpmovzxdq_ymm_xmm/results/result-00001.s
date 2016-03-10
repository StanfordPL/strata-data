  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label            
  vzeroall                              #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r12_r13_xmm2      #  3     0x8   5      OPC=callq_label            
  vunpckhps %xmm5, %xmm2, %xmm13        #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklps %xmm10, %xmm2                #  5     0x11  4      OPC=unpcklps_xmm_xmm       
  vmovapd %xmm2, %xmm12                 #  6     0x15  4      OPC=vmovapd_xmm_xmm        
  callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x19  5      OPC=callq_label            
  retq                                  #  8     0x1e  1      OPC=retq                   
                                                                                         
.size target, .-target