  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vzeroall                          #  1     0     3      OPC=vzeroall                
  divps %xmm9, %xmm12               #  2     0x3   4      OPC=divps_xmm_xmm           
  vpmovsxwq %xmm12, %xmm4           #  3     0x7   5      OPC=vpmovsxwq_xmm_xmm       
  vmovshdup %xmm4, %xmm11           #  4     0xc   4      OPC=vmovshdup_xmm_xmm       
  vpunpckhdq %ymm11, %ymm11, %ymm1  #  5     0x10  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                              #  6     0x15  1      OPC=retq                    
                                                                                      
.size target, .-target
