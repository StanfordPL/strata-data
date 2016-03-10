  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vpand %xmm2, %xmm3, %xmm2           #  1     0     4      OPC=vpand_xmm_xmm_xmm   
  callq .move_128_064_xmm2_r12_r13    #  2     0x4   5      OPC=callq_label         
  vzeroall                            #  3     0x9   3      OPC=vzeroall            
  callq .move_byte_5_of_ymm1_to_r9b   #  4     0xc   5      OPC=callq_label         
  callq .move_064_128_r12_r13_xmm2    #  5     0x11  5      OPC=callq_label         
  vmovss %xmm2, %xmm2, %xmm1          #  6     0x16  4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_r9b_to_byte_16_of_ymm1  #  7     0x1a  5      OPC=callq_label         
  retq                                #  8     0x1f  1      OPC=retq                
                                                                                    
.size target, .-target
