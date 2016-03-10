  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r10_r11      #  1     0     5      OPC=callq_label            
  vzeroall                              #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r10_r11_xmm1      #  3     0x8   5      OPC=callq_label            
  vunpcklpd %xmm1, %xmm7, %xmm12        #  4     0xd   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm3  #  5     0x11  5      OPC=callq_label            
  punpckhdq %xmm1, %xmm3                #  6     0x16  4      OPC=punpckhdq_xmm_xmm      
  vmovsd %xmm3, %xmm12, %xmm1           #  7     0x1a  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                  #  8     0x1e  1      OPC=retq                   
                                                                                         
.size target, .-target
