  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovd %ebx, %xmm8                    #  2     0x5   4      OPC=vmovd_xmm_r32          
  vmovss %xmm8, %xmm11, %xmm7          #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm     
  vunpcklpd %xmm1, %xmm7, %xmm8        #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm  
  unpcklpd %xmm8, %xmm1                #  5     0x12  5      OPC=unpcklpd_xmm_xmm       
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
