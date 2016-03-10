  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label           
  andl %r9d, %r9d                 #  2     0x5   3      OPC=andl_r32_r32          
  callq .move_064_128_r8_r9_xmm3  #  3     0x8   5      OPC=callq_label           
  movups %xmm3, %xmm15            #  4     0xd   4      OPC=movups_xmm_xmm        
  vpbroadcastq %xmm15, %xmm1      #  5     0x11  5      OPC=vpbroadcastq_xmm_xmm  
  retq                            #  6     0x16  1      OPC=retq                  
                                                                                  
.size target, .-target
