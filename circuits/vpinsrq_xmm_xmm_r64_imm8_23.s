  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode             
.target:                                #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label    
  vzeroall                              #  2     0x5   3      OPC=vzeroall       
  callq .move_064_128_r8_r9_xmm3        #  3     0x8   5      OPC=callq_label    
  callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xd   5      OPC=callq_label    
  vmovq %rbx, %xmm13                    #  5     0x12  5      OPC=vmovq_xmm_r64  
  callq .move_64_128_xmm12_xmm13_xmm1   #  6     0x17  5      OPC=callq_label    
  retq                                  #  7     0x1c  1      OPC=retq           
                                                                                 
.size target, .-target
