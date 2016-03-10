  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vminps %xmm1, %xmm1, %xmm7                      #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm7, %xmm3                      #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  unpckhps %xmm7, %xmm10                          #  4     0xd   4      OPC=unpckhps_xmm_xmm    
  punpckhdq %xmm1, %xmm8                          #  5     0x11  5      OPC=punpckhdq_xmm_xmm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label         
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
