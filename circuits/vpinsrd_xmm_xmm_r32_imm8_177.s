  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  movd %ebx, %xmm8                #  1     0    5      OPC=movd_xmm_r32            
  vpunpckldq %xmm8, %xmm2, %xmm7  #  2     0x5  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm7, %xmm2, %xmm1      #  3     0xa  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                            #  4     0xe  1      OPC=retq                    
                                                                                   
.size target, .-target
