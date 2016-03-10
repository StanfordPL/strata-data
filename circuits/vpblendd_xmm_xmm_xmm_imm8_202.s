  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovsldup %xmm2, %xmm2                          #  2     0x5   4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm3, %xmm2, %xmm0                   #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  vpor %xmm0, %xmm8, %xmm1                        #  4     0xd   4      OPC=vpor_xmm_xmm_xmm       
  movss %xmm2, %xmm3                              #  5     0x11  4      OPC=movss_xmm_xmm          
  movsd %xmm3, %xmm1                              #  6     0x15  4      OPC=movsd_xmm_xmm          
  retq                                            #  7     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
