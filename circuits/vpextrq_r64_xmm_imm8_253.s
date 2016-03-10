  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  punpckhqdq %xmm1, %xmm1    #  1     0    4      OPC=punpckhqdq_xmm_xmm    
  vbroadcastsd %xmm1, %ymm1  #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm  
  vmovq %xmm1, %rbx          #  3     0x9  5      OPC=vmovq_r64_xmm         
  retq                       #  4     0xe  1      OPC=retq                  
                                                                            
.size target, .-target
