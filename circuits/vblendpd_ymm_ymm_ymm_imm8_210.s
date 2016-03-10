  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovdqu %ymm2, %ymm0              #  1     0     4      OPC=vmovdqu_ymm_ymm     
  vorps %ymm0, %ymm2, %ymm1         #  2     0x4   4      OPC=vorps_ymm_ymm_ymm   
  vmovsd %xmm0, %xmm3, %xmm2        #  3     0x8   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  4     0xc   5      OPC=callq_label         
  callq .move_064_128_r12_r13_xmm1  #  5     0x11  5      OPC=callq_label         
  retq                              #  6     0x16  1      OPC=retq                
                                                                                  
.size target, .-target
