  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovsd %xmm2, %xmm3, %xmm8            #  1     0     4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  movups %xmm13, %xmm9                  #  3     0x9   4      OPC=movups_xmm_xmm      
  callq .move_128_256_xmm8_xmm9_ymm1    #  4     0xd   5      OPC=callq_label         
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
