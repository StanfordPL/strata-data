  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movd %ebx, %xmm13                #  1     0     5      OPC=movd_xmm_r32             
  movsldup %xmm13, %xmm5           #  2     0x5   5      OPC=movsldup_xmm_xmm         
  vpunpckldq %xmm5, %xmm5, %xmm4   #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpckhqdq %xmm2, %xmm4, %xmm6  #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovss %xmm2, %xmm6, %xmm1       #  5     0x12  4      OPC=vmovss_xmm_xmm_xmm       
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
