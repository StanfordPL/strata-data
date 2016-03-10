  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11      #  1     0     5      OPC=callq_label       
  vzeroall                              #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r10_r11_xmm3      #  3     0x8   5      OPC=callq_label       
  cvtps2dq %xmm12, %xmm11               #  4     0xd   5      OPC=cvtps2dq_xmm_xmm  
  por %xmm3, %xmm11                     #  5     0x12  5      OPC=por_xmm_xmm       
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x17  5      OPC=callq_label       
  retq                                  #  7     0x1c  1      OPC=retq              
                                                                                    
.size target, .-target
