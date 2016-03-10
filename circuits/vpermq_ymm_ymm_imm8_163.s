  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovddup %ymm2, %ymm1                 #  1     0     4      OPC=vmovddup_ymm_ymm    
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vmaxsd %xmm1, %xmm11, %xmm4           #  3     0x9   4      OPC=vmaxsd_xmm_xmm_xmm  
  movhlps %xmm4, %xmm1                  #  4     0xd   3      OPC=movhlps_xmm_xmm     
  retq                                  #  5     0x10  1      OPC=retq                
                                                                                      
.size target, .-target
