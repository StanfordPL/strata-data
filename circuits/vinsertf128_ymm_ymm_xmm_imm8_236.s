  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovsxbd %xmm2, %xmm2  #  1     0    5      OPC=pmovsxbd_xmm_xmm  
  vmovaps %ymm2, %ymm1   #  2     0x5  4      OPC=vmovaps_ymm_ymm   
  movups %xmm3, %xmm1    #  3     0x9  3      OPC=movups_xmm_xmm    
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target
