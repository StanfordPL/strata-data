  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13              #  1     0     5      OPC=callq_label        
  vzeroall                                      #  2     0x5   3      OPC=vzeroall           
  callq .move_064_128_r12_r13_xmm1              #  3     0x8   5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label        
  movhlps %xmm3, %xmm6                          #  5     0x12  3      OPC=movhlps_xmm_xmm    
  vpxor %xmm6, %xmm5, %xmm4                     #  6     0x15  4      OPC=vpxor_xmm_xmm_xmm  
  orps %xmm1, %xmm6                             #  7     0x19  3      OPC=orps_xmm_xmm       
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x1c  5      OPC=callq_label        
  retq                                          #  9     0x21  1      OPC=retq               
                                                                                             
.size target, .-target
