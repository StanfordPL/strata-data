  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm12          #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vhaddpd %xmm1, %xmm12, %xmm10        #  2     0x4   4      OPC=vhaddpd_xmm_xmm_xmm  
  vorps %ymm10, %ymm10, %ymm13         #  3     0x8   5      OPC=vorps_ymm_ymm_ymm    
  movdqu %xmm10, %xmm12                #  4     0xd   5      OPC=movdqu_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label          
  retq                                 #  6     0x17  1      OPC=retq                 
                                                                                      
.size target, .-target
