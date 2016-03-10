  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovshdup %xmm3, %xmm4            #  1     0     4      OPC=vmovshdup_xmm_xmm      
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label            
  movd %r13d, %xmm12                #  3     0x9   5      OPC=movd_xmm_r32           
  vunpcklpd %xmm12, %xmm2, %xmm0    #  4     0xe   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vpmovsxbq %xmm1, %xmm1            #  5     0x13  5      OPC=vpmovsxbq_xmm_xmm      
  vmovss %xmm4, %xmm0, %xmm6        #  6     0x18  4      OPC=vmovss_xmm_xmm_xmm     
  movdqa %xmm6, %xmm1               #  7     0x1c  4      OPC=movdqa_xmm_xmm         
  retq                              #  8     0x20  1      OPC=retq                   
                                                                                     
.size target, .-target
