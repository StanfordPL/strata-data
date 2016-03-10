  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmulpd %xmm2, %xmm1, %xmm6                      #  2     0x5   4      OPC=vmulpd_xmm_xmm_xmm    
  haddpd %xmm6, %xmm2                             #  3     0x9   4      OPC=haddpd_xmm_xmm        
  vmovhlps %xmm9, %xmm2, %xmm14                   #  4     0xd   5      OPC=vmovhlps_xmm_xmm_xmm  
  movdqu %xmm14, %xmm1                            #  5     0x12  5      OPC=movdqu_xmm_xmm        
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
