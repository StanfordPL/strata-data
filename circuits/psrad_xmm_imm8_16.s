  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpmovsxwd %xmm13, %xmm8              #  2     0x5   5      OPC=vpmovsxwd_xmm_xmm       
  vpmovsxwd %xmm12, %xmm7              #  3     0xa   5      OPC=vpmovsxwd_xmm_xmm       
  vpunpckldq %ymm8, %ymm7, %ymm15      #  4     0xf   5      OPC=vpunpckldq_ymm_ymm_ymm  
  unpckhps %xmm8, %xmm7                #  5     0x14  4      OPC=unpckhps_xmm_xmm        
  vpunpckhdq %xmm7, %xmm15, %xmm3      #  6     0x18  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movups %xmm3, %xmm1                  #  7     0x1c  3      OPC=movups_xmm_xmm          
  retq                                 #  8     0x1f  1      OPC=retq                    
                                                                                         
.size target, .-target
