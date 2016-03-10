  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  cvttpd2dq %xmm1, %xmm15  #  1     0    5      OPC=cvttpd2dq_xmm_xmm  
  movapd %xmm15, %xmm1     #  2     0x5  5      OPC=movapd_xmm_xmm     
  unpckhps %xmm15, %xmm1   #  3     0xa  4      OPC=unpckhps_xmm_xmm   
  retq                     #  4     0xe  1      OPC=retq               
                                                                       
.size target, .-target
