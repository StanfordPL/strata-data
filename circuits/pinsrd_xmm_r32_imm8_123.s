  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movd %ebx, %xmm11                #  1     0     5      OPC=movd_xmm_r32             
  vaddsubpd %xmm1, %xmm11, %xmm0   #  2     0x5   4      OPC=vaddsubpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm1, %xmm0, %xmm7  #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpckldq %xmm11, %xmm7          #  4     0xd   5      OPC=punpckldq_xmm_xmm        
  movlhps %xmm7, %xmm1             #  5     0x12  3      OPC=movlhps_xmm_xmm          
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
