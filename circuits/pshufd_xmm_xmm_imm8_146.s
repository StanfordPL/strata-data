  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm8_xmm9    #  2     0x5   5      OPC=callq_label             
  vminss %xmm9, %xmm10, %xmm15         #  3     0xa   5      OPC=vminss_xmm_xmm_xmm      
  vunpcklps %xmm9, %xmm10, %xmm6       #  4     0xf   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %xmm6, %xmm15, %xmm15     #  5     0x14  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmaxss %xmm9, %xmm15, %xmm9          #  6     0x18  5      OPC=vmaxss_xmm_xmm_xmm      
  movapd %xmm9, %xmm1                  #  7     0x1d  5      OPC=movapd_xmm_xmm          
  retq                                 #  8     0x22  1      OPC=retq                    
                                                                                         
.size target, .-target
