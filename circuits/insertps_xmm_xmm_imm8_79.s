  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm10_xmm11_ymm3            #  2     0x5   5      OPC=callq_label         
  vxorps %xmm10, %xmm3, %xmm2                     #  3     0xa   5      OPC=vxorps_xmm_xmm_xmm  
  movupd %xmm2, %xmm1                             #  4     0xf   4      OPC=movupd_xmm_xmm      
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
