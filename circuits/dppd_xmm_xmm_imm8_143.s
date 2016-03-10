  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vpxor %xmm8, %xmm8, %xmm0            #  1     0     5      OPC=vpxor_xmm_xmm_xmm      
  movddup %xmm0, %xmm10                #  2     0x5   5      OPC=movddup_xmm_xmm        
  vunpcklpd %xmm1, %xmm0, %xmm11       #  3     0xa   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label            
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
