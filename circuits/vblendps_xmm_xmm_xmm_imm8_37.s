  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovss %xmm3, %xmm2, %xmm10      #  1     0     4      OPC=vmovss_xmm_xmm_xmm      
  vmovsd %xmm10, %xmm3, %xmm1      #  2     0x4   5      OPC=vmovsd_xmm_xmm_xmm      
  vpunpckhdq %xmm2, %xmm10, %xmm8  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %xmm8, %xmm1, %xmm9    #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm   
  unpcklpd %xmm9, %xmm1            #  5     0x12  5      OPC=unpcklpd_xmm_xmm        
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
