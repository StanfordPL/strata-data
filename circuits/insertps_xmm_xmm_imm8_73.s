  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vandnpd %xmm4, %xmm1, %xmm0                   #  2     0x5   4      OPC=vandnpd_xmm_xmm_xmm     
  vpunpckhdq %xmm4, %xmm1, %xmm6                #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovddup %ymm0, %ymm7                         #  4     0xd   4      OPC=vmovddup_ymm_ymm        
  movdqa %xmm7, %xmm4                           #  5     0x11  4      OPC=movdqa_xmm_xmm          
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x15  5      OPC=callq_label             
  retq                                          #  7     0x1a  1      OPC=retq                    
                                                                                                  
.size target, .-target
