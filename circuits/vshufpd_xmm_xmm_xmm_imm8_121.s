  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vunpcklpd %xmm3, %xmm2, %xmm3     #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm  
  unpckhpd %xmm3, %xmm2             #  2     0x4   4      OPC=unpckhpd_xmm_xmm       
  callq .move_128_064_xmm2_r10_r11  #  3     0x8   5      OPC=callq_label            
  vzeroall                          #  4     0xd   3      OPC=vzeroall               
  vorpd %xmm7, %xmm12, %xmm1        #  5     0x10  4      OPC=vorpd_xmm_xmm_xmm      
  callq .move_064_128_r10_r11_xmm1  #  6     0x14  5      OPC=callq_label            
  retq                              #  7     0x19  1      OPC=retq                   
                                                                                     
.size target, .-target
