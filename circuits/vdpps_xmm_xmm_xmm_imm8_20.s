  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vmulps %xmm3, %xmm2, %xmm3                    #  1     0     4      OPC=vmulps_xmm_xmm_xmm   
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label          
  vzeroall                                      #  3     0x9   3      OPC=vzeroall             
  vminss %xmm7, %xmm5, %xmm9                    #  4     0xc   4      OPC=vminss_xmm_xmm_xmm   
  movd %r10d, %xmm9                             #  5     0x10  5      OPC=movd_xmm_r32         
  vhaddps %ymm9, %ymm12, %ymm1                  #  6     0x15  5      OPC=vhaddps_ymm_ymm_ymm  
  retq                                          #  7     0x1a  1      OPC=retq                 
                                                                                               
.size target, .-target
