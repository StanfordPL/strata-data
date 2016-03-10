  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                      
.target:                            #        0    0      OPC=<label>                 
  vunpckhps %xmm2, %xmm2, %xmm14    #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckldq %xmm14, %xmm1, %xmm13  #  2     0x4  5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm13, %xmm1               #  3     0x9  5      OPC=movsd_xmm_xmm           
  retq                              #  4     0xe  1      OPC=retq                    
                                                                                     
.size target, .-target
