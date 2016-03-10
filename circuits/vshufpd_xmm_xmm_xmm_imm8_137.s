  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_064_xmm3_r8_r9                #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label              
  vzeroall                                      #  3     0xa   3      OPC=vzeroall                 
  callq .move_032_064_r12d_r13d_rcx             #  4     0xd   5      OPC=callq_label              
  callq .move_064_128_r8_r9_xmm2                #  5     0x12  5      OPC=callq_label              
  movq %rcx, %xmm8                              #  6     0x17  5      OPC=movq_xmm_r64             
  vpunpcklqdq %ymm2, %ymm8, %ymm1               #  7     0x1c  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                          #  8     0x20  1      OPC=retq                     
                                                                                                   
.size target, .-target
