  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm7  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  vmovups %xmm7, %xmm12      #  2     0x5  4      OPC=vmovups_xmm_xmm       
  punpckhqdq %xmm12, %xmm1   #  3     0x9  5      OPC=punpckhqdq_xmm_xmm    
  retq                       #  4     0xe  1      OPC=retq                  
                                                                            
.size target, .-target
