  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                      
.target:                            #        0    0      OPC=<label>                 
  movd %ebx, %xmm14                 #  1     0    5      OPC=movd_xmm_r32            
  vpunpckldq %xmm14, %xmm1, %xmm15  #  2     0x5  5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm15, %xmm1               #  3     0xa  5      OPC=movsd_xmm_xmm           
  retq                              #  4     0xf  1      OPC=retq                    
                                                                                     
.size target, .-target
