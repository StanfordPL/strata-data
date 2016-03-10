  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  xorps %xmm1, %xmm1                              #  1     0     3      OPC=xorps_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label         
  vxorpd %xmm3, %xmm3, %xmm10                     #  3     0x8   4      OPC=vxorpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  4     0xc   5      OPC=callq_label         
  retq                                            #  5     0x11  1      OPC=retq                
                                                                                                
.size target, .-target
