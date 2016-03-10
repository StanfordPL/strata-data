  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13          #  1     0     5      OPC=callq_label           
  vzeroall                                  #  2     0x5   3      OPC=vzeroall              
  vmovq %r12, %xmm6                         #  3     0x8   5      OPC=vmovq_xmm_r64         
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label           
  vpbroadcastq %xmm6, %xmm1                 #  5     0x12  5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_r8b_to_byte_24_of_ymm1        #  6     0x17  5      OPC=callq_label           
  retq                                      #  7     0x1c  1      OPC=retq                  
                                                                                            
.size target, .-target
