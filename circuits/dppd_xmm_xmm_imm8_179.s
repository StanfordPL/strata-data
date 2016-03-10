  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vmulpd %xmm2, %xmm1, %xmm7                      #  2     0x5   4      OPC=vmulpd_xmm_xmm_xmm   
  vhaddpd %xmm10, %xmm7, %xmm0                    #  3     0x9   5      OPC=vhaddpd_xmm_xmm_xmm  
  movddup %xmm0, %xmm1                            #  4     0xe   4      OPC=movddup_xmm_xmm      
  retq                                            #  5     0x12  1      OPC=retq                 
                                                                                                 
.size target, .-target
