  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vrcpps %xmm10, %xmm8                 #  2     0x5   5      OPC=vrcpps_xmm_xmm     
  cvttpd2dq %xmm8, %xmm1               #  3     0xa   5      OPC=cvttpd2dq_xmm_xmm  
  subsd %xmm1, %xmm1                   #  4     0xf   4      OPC=subsd_xmm_xmm      
  retq                                 #  5     0x13  1      OPC=retq               
                                                                                    
.size target, .-target
