  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm6, %xmm5, %xmm10                #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsldup %xmm3, %xmm0                        #  3     0x9   4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm0, %xmm3, %xmm6                 #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm10, %xmm6, %xmm1                   #  5     0x11  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
