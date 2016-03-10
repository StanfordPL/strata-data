  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm2    #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %ebx, %xmm10                 #  2     0x4   5      OPC=movd_xmm_r32            
  vpunpckldq %xmm10, %xmm2, %xmm11  #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm11, %xmm1          #  4     0xe   5      OPC=punpcklqdq_xmm_xmm      
  retq                              #  5     0x13  1      OPC=retq                    
                                                                                      
.size target, .-target
