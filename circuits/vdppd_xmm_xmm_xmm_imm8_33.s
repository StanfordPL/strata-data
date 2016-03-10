  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vmulpd %xmm3, %xmm2, %xmm2                    #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label          
  vzeroall                                      #  3     0x9   3      OPC=vzeroall             
  callq .move_032_064_r12d_r13d_rbx             #  4     0xc   5      OPC=callq_label          
  vmovq %rbx, %xmm6                             #  5     0x11  5      OPC=vmovq_xmm_r64        
  vhaddpd %ymm0, %ymm6, %ymm1                   #  6     0x16  4      OPC=vhaddpd_ymm_ymm_ymm  
  retq                                          #  7     0x1a  1      OPC=retq                 
                                                                                               
.size target, .-target
