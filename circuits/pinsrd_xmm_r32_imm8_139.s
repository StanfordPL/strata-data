  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vunpcklps %xmm1, %xmm1, %xmm15    #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpckhqdq %xmm15, %xmm1, %xmm3  #  2     0x4   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movd %ebx, %xmm15                 #  3     0x9   5      OPC=movd_xmm_r32             
  vpunpckldq %xmm15, %xmm3, %xmm13  #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm   
  punpcklqdq %xmm13, %xmm1          #  5     0x13  5      OPC=punpcklqdq_xmm_xmm       
  retq                              #  6     0x18  1      OPC=retq                     
                                                                                       
.size target, .-target
