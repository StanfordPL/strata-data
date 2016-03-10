  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovd %ebx, %xmm8                    #  2     0x5   4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm8, %xmm12, %xmm11      #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  vunpcklpd %xmm13, %xmm11, %xmm1      #  4     0xe   5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
