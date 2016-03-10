  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .move_128_064_xmm3_r8_r9    #  1     0     5      OPC=callq_label              
  callq .move_128_064_xmm2_r10_r11  #  2     0x5   5      OPC=callq_label              
  vzeroall                          #  3     0xa   3      OPC=vzeroall                 
  callq .move_064_128_r10_r11_xmm3  #  4     0xd   5      OPC=callq_label              
  callq .move_064_128_r8_r9_xmm1    #  5     0x12  5      OPC=callq_label              
  vfmadd213ss %xmm1, %xmm7, %xmm3   #  6     0x17  5      OPC=vfmadd213ss_xmm_xmm_xmm  
  vmovss %xmm1, %xmm3, %xmm1        #  7     0x1c  4      OPC=vmovss_xmm_xmm_xmm       
  retq                              #  8     0x20  1      OPC=retq                     
                                                                                       
.size target, .-target
