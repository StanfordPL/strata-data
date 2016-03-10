  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                
.target:                  #        0     0      OPC=<label>           
  vmovups %xmm2, %xmm10   #  1     0     4      OPC=vmovups_xmm_xmm   
  vrsqrtps %ymm10, %ymm8  #  2     0x4   5      OPC=vrsqrtps_ymm_ymm  
  vmovaps %xmm8, %xmm5    #  3     0x9   5      OPC=vmovaps_xmm_xmm   
  vmovaps %xmm5, %xmm1    #  4     0xe   4      OPC=vmovaps_xmm_xmm   
  retq                    #  5     0x12  1      OPC=retq              
                                                                      
.size target, .-target
