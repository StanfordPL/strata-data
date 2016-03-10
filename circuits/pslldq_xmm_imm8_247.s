  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                     
.target:                                          #        0    0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label            
  vunpckhpd %xmm1, %xmm11, %xmm6                  #  2     0x5  4      OPC=vunpckhpd_xmm_xmm_xmm  
  movddup %xmm6, %xmm1                            #  3     0x9  4      OPC=movddup_xmm_xmm        
  retq                                            #  4     0xd  1      OPC=retq                   
                                                                                                  
.size target, .-target
