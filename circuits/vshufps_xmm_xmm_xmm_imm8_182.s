  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vminss %xmm10, %xmm3, %xmm4                     #  2     0x5   5      OPC=vminss_xmm_xmm_xmm     
  vmovdqu %xmm4, %xmm0                            #  3     0xa   4      OPC=vmovdqu_xmm_xmm        
  movsldup %xmm3, %xmm14                          #  4     0xe   5      OPC=movsldup_xmm_xmm       
  vunpcklps %xmm9, %xmm10, %xmm15                 #  5     0x13  5      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhps %xmm14, %xmm0, %xmm1                  #  6     0x18  5      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm15, %xmm1                             #  7     0x1d  5      OPC=movsd_xmm_xmm          
  retq                                            #  8     0x22  1      OPC=retq                   
                                                                                                   
.size target, .-target
