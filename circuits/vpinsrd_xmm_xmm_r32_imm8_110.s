  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovd %ebx, %xmm3                               #  2     0x5   4      OPC=vmovd_xmm_r32         
  unpcklps %xmm11, %xmm3                          #  3     0x9   4      OPC=unpcklps_xmm_xmm      
  vmovlhps %xmm3, %xmm2, %xmm1                    #  4     0xd   4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                            #  5     0x11  1      OPC=retq                  
                                                                                                  
.size target, .-target
