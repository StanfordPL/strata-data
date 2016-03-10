  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vmovups %xmm7, %xmm6                          #  2     0x5   4      OPC=vmovups_xmm_xmm      
  vhaddpd %xmm4, %xmm5, %xmm5                   #  3     0x9   4      OPC=vhaddpd_xmm_xmm_xmm  
  vhaddpd %xmm7, %xmm6, %xmm4                   #  4     0xd   4      OPC=vhaddpd_xmm_xmm_xmm  
  movdqa %xmm5, %xmm1                           #  5     0x11  4      OPC=movdqa_xmm_xmm       
  phsubd %xmm4, %xmm1                           #  6     0x15  5      OPC=phsubd_xmm_xmm       
  retq                                          #  7     0x1a  1      OPC=retq                 
                                                                                               
.size target, .-target
