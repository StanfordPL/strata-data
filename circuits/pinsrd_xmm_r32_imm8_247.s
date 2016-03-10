  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movd %ebx, %xmm7                  #  1     0     4      OPC=movd_xmm_r32            
  vbroadcastss %xmm7, %xmm11        #  2     0x4   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm11, %xmm1, %xmm13  #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklpd %xmm13, %xmm1            #  4     0xe   5      OPC=unpcklpd_xmm_xmm        
  retq                              #  5     0x13  1      OPC=retq                    
                                                                                      
.size target, .-target
