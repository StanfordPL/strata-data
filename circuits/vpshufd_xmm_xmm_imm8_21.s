  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label           
  vzeroall                                        #  2     0x5   3      OPC=vzeroall              
  callq .move_064_128_r10_r11_xmm1                #  3     0x8   5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label           
  movsd %xmm8, %xmm11                             #  5     0x12  5      OPC=movsd_xmm_xmm         
  vmovsldup %xmm9, %xmm10                         #  6     0x17  5      OPC=vmovsldup_xmm_xmm     
  vbroadcastss %xmm9, %ymm8                       #  7     0x1c  5      OPC=vbroadcastss_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x21  5      OPC=callq_label           
  retq                                            #  9     0x26  1      OPC=retq                  
                                                                                                  
.size target, .-target
