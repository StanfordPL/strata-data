  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmulss %xmm2, %xmm1, %xmm9                    #  1     0     4      OPC=vmulss_xmm_xmm_xmm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  movddup %xmm7, %xmm3                          #  3     0x9   4      OPC=movddup_xmm_xmm        
  vunpckhps %xmm3, %xmm9, %xmm12                #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm  
  movlhps %xmm12, %xmm1                         #  5     0x11  4      OPC=movlhps_xmm_xmm        
  retq                                          #  6     0x15  1      OPC=retq                   
                                                                                                 
.size target, .-target
