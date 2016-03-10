  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  movlhps %xmm2, %xmm3                            #  1     0     3      OPC=movlhps_xmm_xmm     
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label         
  callq .move_128_256_xmm10_xmm11_ymm1            #  3     0x8   5      OPC=callq_label         
  vxorps %xmm1, %xmm8, %xmm10                     #  4     0xd   4      OPC=vxorps_xmm_xmm_xmm  
  vxorps %xmm10, %xmm2, %xmm1                     #  5     0x11  5      OPC=vxorps_xmm_xmm_xmm  
  retq                                            #  6     0x16  1      OPC=retq                
                                                                                                
.size target, .-target
