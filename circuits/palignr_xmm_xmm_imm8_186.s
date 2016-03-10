  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vpmovsxbd %xmm1, %ymm14  #  1     0    5      OPC=vpmovsxbd_ymm_xmm   
  movq %xmm14, %xmm1       #  2     0x5  5      OPC=movq_xmm_xmm        
  punpckhqdq %xmm1, %xmm1  #  3     0xa  4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  4     0xe  1      OPC=retq                
                                                                        
.size target, .-target
