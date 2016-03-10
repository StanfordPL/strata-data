  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpunpckldq %xmm2, %xmm2, %xmm0  #  1     0    4      OPC=vpunpckldq_xmm_xmm_xmm  
  movups %xmm2, %xmm1             #  2     0x4  3      OPC=movups_xmm_xmm          
  unpckhps %xmm0, %xmm1           #  3     0x7  3      OPC=unpckhps_xmm_xmm        
  punpckhdq %xmm2, %xmm1          #  4     0xa  4      OPC=punpckhdq_xmm_xmm       
  retq                            #  5     0xe  1      OPC=retq                    
                                                                                   
.size target, .-target
