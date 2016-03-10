  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label               
  vzeroall                            #  2     0x5   3      OPC=vzeroall                  
  callq .move_r8b_to_byte_19_of_ymm1  #  3     0x8   5      OPC=callq_label               
  callq .move_064_128_r8_r9_xmm3      #  4     0xd   5      OPC=callq_label               
  vfnmsub231ps %xmm1, %xmm12, %xmm4   #  5     0x12  5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vpmovsxdq %xmm4, %xmm1              #  6     0x17  5      OPC=vpmovsxdq_xmm_xmm         
  vhaddps %xmm8, %xmm1, %xmm1         #  7     0x1c  5      OPC=vhaddps_xmm_xmm_xmm       
  por %xmm3, %xmm1                    #  8     0x21  4      OPC=por_xmm_xmm               
  retq                                #  9     0x25  1      OPC=retq                      
                                                                                          
.size target, .-target
