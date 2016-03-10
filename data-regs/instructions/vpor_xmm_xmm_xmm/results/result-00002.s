  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label        
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label        
  vzeroall                          #  3     0xa   3      OPC=vzeroall           
  callq .move_064_128_r8_r9_xmm3    #  4     0xd   5      OPC=callq_label        
  callq .move_064_128_r10_r11_xmm2  #  5     0x12  5      OPC=callq_label        
  vorpd %xmm12, %xmm2, %xmm1        #  6     0x17  5      OPC=vorpd_xmm_xmm_xmm  
  orps %xmm3, %xmm1                 #  7     0x1c  3      OPC=orps_xmm_xmm       
  retq                              #  8     0x1f  1      OPC=retq               
                                                                                 
.size target, .-target
