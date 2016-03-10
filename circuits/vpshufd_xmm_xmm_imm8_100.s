  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label      
  vzeroall                                      #  2     0x5   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm1                #  3     0x8   5      OPC=callq_label      
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label      
  orps %xmm5, %xmm14                            #  5     0x12  4      OPC=orps_xmm_xmm     
  movddup %xmm14, %xmm7                         #  6     0x16  5      OPC=movddup_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1b  5      OPC=callq_label      
  retq                                          #  8     0x20  1      OPC=retq             
                                                                                           
.size target, .-target
