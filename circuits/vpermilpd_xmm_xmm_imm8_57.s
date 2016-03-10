  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vcvtpd2ps %xmm2, %xmm1            #  1     0     4      OPC=vcvtpd2ps_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label        
  xchgq %r12, %r13                  #  3     0x9   3      OPC=xchgq_r64_r64      
  callq .move_064_128_r12_r13_xmm1  #  4     0xc   5      OPC=callq_label        
  retq                              #  5     0x11  1      OPC=retq               
                                                                                 
.size target, .-target
