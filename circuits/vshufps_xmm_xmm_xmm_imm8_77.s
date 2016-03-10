  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovshdup %xmm10, %xmm8              #  2     0x5   5      OPC=vmovshdup_xmm_xmm      
  vmovss %xmm8, %xmm11, %xmm2          #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm     
  callq .move_128_64_xmm2_xmm8_xmm9    #  4     0xf   5      OPC=callq_label            
  vunpcklpd %xmm3, %xmm8, %xmm1        #  5     0x14  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
