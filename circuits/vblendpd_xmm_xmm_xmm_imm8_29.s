  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastsd %xmm3, %ymm5  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  vmovups %xmm2, %xmm1       #  2     0x5  4      OPC=vmovups_xmm_xmm       
  movsd %xmm5, %xmm1         #  3     0x9  4      OPC=movsd_xmm_xmm         
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
