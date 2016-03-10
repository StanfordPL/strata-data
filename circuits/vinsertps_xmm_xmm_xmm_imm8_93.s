  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vcvttpd2dq %xmm8, %xmm4            #  2     0x5   5      OPC=vcvttpd2dq_xmm_xmm     
  vmaxps %xmm4, %xmm4, %xmm13        #  3     0xa   4      OPC=vmaxps_xmm_xmm_xmm     
  vcvtsd2ss %xmm13, %xmm8, %xmm1     #  4     0xe   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  retq                               #  5     0x13  1      OPC=retq                   
                                                                                      
.size target, .-target
