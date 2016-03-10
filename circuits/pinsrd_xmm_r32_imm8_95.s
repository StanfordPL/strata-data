  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm2                     #  1     0     4      OPC=vmovd_xmm_r32           
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label             
  movddup %xmm12, %xmm8                 #  3     0x9   5      OPC=movddup_xmm_xmm         
  vpunpckhdq %xmm8, %xmm1, %xmm9        #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovddup %xmm9, %xmm6                 #  5     0x13  5      OPC=vmovddup_xmm_xmm        
  unpcklpd %xmm6, %xmm1                 #  6     0x18  4      OPC=unpcklpd_xmm_xmm        
  retq                                  #  7     0x1c  1      OPC=retq                    
                                                                                          
.size target, .-target
