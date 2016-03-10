  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm2, %xmm14  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovd %ebx, %xmm4                 #  2     0x4   4      OPC=vmovd_xmm_r32            
  vunpcklps %xmm4, %xmm14, %xmm8    #  3     0x8   4      OPC=vunpcklps_xmm_xmm_xmm    
  vunpcklpd %xmm8, %xmm2, %xmm1     #  4     0xc   5      OPC=vunpcklpd_xmm_xmm_xmm    
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
