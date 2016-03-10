  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm1        #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  paddd %xmm2, %xmm3                #  2     0x4   4      OPC=paddd_xmm_xmm       
  callq .move_128_064_xmm3_r10_r11  #  3     0x8   5      OPC=callq_label         
  callq .move_064_128_r10_r11_xmm1  #  4     0xd   5      OPC=callq_label         
  retq                              #  5     0x12  1      OPC=retq                
                                                                                  
.size target, .-target
