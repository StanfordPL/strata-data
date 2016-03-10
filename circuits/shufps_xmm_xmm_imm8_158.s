  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm1, %xmm0  #  1     0    4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm0, %xmm2, %xmm5   #  2     0x4  4      OPC=vunpcklps_xmm_xmm_xmm   
  unpckhpd %xmm5, %xmm1           #  3     0x8  4      OPC=unpckhpd_xmm_xmm        
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target
