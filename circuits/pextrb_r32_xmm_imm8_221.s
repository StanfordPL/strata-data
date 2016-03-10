  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  callq .move_byte_13_of_ymm1_to_r8b            #  2     0x5   5      OPC=callq_label        
  cvtpd2dq %xmm4, %xmm6                         #  3     0xa   4      OPC=cvtpd2dq_xmm_xmm   
  vmovmskpd %xmm6, %ebx                         #  4     0xe   4      OPC=vmovmskpd_r32_xmm  
  xaddb %r8b, %bl                               #  5     0x12  4      OPC=xaddb_r8_r8        
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
