  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                      
.target:                            #        0    0      OPC=<label>                 
  movshdup %xmm1, %xmm10            #  1     0    5      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm10, %xmm10, %xmm7  #  2     0x5  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm7, %ebx                  #  3     0xa  4      OPC=movd_r32_xmm            
  retq                              #  4     0xe  1      OPC=retq                    
                                                                                     
.size target, .-target
