  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  movq %rbx, %xmm14           #  1     0    5      OPC=movq_xmm_r64          
  vpbroadcastq %xmm14, %xmm1  #  2     0x5  5      OPC=vpbroadcastq_xmm_xmm  
  punpckhqdq %xmm2, %xmm1     #  3     0xa  4      OPC=punpckhqdq_xmm_xmm    
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
