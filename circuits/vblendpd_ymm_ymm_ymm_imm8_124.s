  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  sqrtsd %xmm2, %xmm3    #  1     0     4      OPC=sqrtsd_xmm_xmm   
  vmovaps %ymm3, %ymm1   #  2     0x4   4      OPC=vmovaps_ymm_ymm  
  vmovapd %ymm2, %ymm14  #  3     0x8   4      OPC=vmovapd_ymm_ymm  
  movups %xmm14, %xmm1   #  4     0xc   4      OPC=movups_xmm_xmm   
  retq                   #  5     0x10  1      OPC=retq             
                                                                    
.size target, .-target
