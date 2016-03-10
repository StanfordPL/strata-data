  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vunpckhpd %xmm1, %xmm13, %xmm0       #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm   
  vpunpckldq %xmm0, %xmm0, %xmm15      #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movddup %xmm15, %xmm1                #  4     0xd   5      OPC=movddup_xmm_xmm         
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target
