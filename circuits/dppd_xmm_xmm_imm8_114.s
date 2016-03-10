  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm3            #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label          
  vaddss %xmm10, %xmm3, %xmm0           #  3     0x9   5      OPC=vaddss_xmm_xmm_xmm   
  vhaddpd %xmm10, %xmm3, %xmm9          #  4     0xe   5      OPC=vhaddpd_xmm_xmm_xmm  
  cvttpd2dq %xmm0, %xmm1                #  5     0x13  4      OPC=cvttpd2dq_xmm_xmm    
  unpckhpd %xmm9, %xmm1                 #  6     0x17  5      OPC=unpckhpd_xmm_xmm     
  retq                                  #  7     0x1c  1      OPC=retq                 
                                                                                       
.size target, .-target
