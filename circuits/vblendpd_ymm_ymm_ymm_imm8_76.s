  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  punpcklqdq %xmm2, %xmm3  #  1     0    4      OPC=punpcklqdq_xmm_xmm  
  vmovdqu %ymm3, %ymm1     #  2     0x4  4      OPC=vmovdqu_ymm_ymm     
  punpckhqdq %xmm2, %xmm1  #  3     0x8  4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
