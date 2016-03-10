  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movsldup %xmm2, %xmm8           #  1     0     5      OPC=movsldup_xmm_xmm        
  vunpckhps %xmm2, %xmm1, %xmm9   #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm   
  movups %xmm9, %xmm0             #  3     0x9   4      OPC=movups_xmm_xmm          
  unpcklps %xmm8, %xmm9           #  4     0xd   4      OPC=unpcklps_xmm_xmm        
  vpunpckhdq %xmm1, %xmm0, %xmm8  #  5     0x11  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm8, %xmm9, %xmm11     #  6     0x15  5      OPC=vmovsd_xmm_xmm_xmm      
  movapd %xmm11, %xmm1            #  7     0x1a  5      OPC=movapd_xmm_xmm          
  retq                            #  8     0x1f  1      OPC=retq                    
                                                                                    
.size target, .-target
