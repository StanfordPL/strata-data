  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  movups %xmm2, %xmm1                             #  2     0x5   3      OPC=movups_xmm_xmm        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label           
  vbroadcastss %xmm7, %ymm10                      #  4     0xd   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label           
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
