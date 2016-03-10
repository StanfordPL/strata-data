  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r12_r13              #  2     0x5   5      OPC=callq_label      
  vzeroall                                      #  3     0xa   3      OPC=vzeroall         
  callq .move_064_128_r12_r13_xmm1              #  4     0xd   5      OPC=callq_label      
  vmovd %r10d, %xmm14                           #  5     0x12  5      OPC=vmovd_xmm_r32    
  rsqrtss %xmm14, %xmm1                         #  6     0x17  5      OPC=rsqrtss_xmm_xmm  
  retq                                          #  7     0x1c  1      OPC=retq             
                                                                                           
.size target, .-target
