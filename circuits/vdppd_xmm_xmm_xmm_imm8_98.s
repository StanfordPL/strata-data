  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmulpd %xmm3, %xmm2, %xmm2        #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4   5      OPC=callq_label         
  vzeroall                          #  3     0x9   3      OPC=vzeroall            
  movmskpd %xmm14, %r10d            #  4     0xc   5      OPC=movmskpd_r32_xmm    
  callq .move_064_128_r10_r11_xmm2  #  5     0x11  5      OPC=callq_label         
  haddpd %xmm2, %xmm1               #  6     0x16  4      OPC=haddpd_xmm_xmm      
  retq                              #  7     0x1a  1      OPC=retq                
                                                                                  
.size target, .-target
